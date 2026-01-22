import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';
import 'package:webview_flutter/webview_flutter.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meta Search',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MainHolder(),
    );
  }
}

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<StatefulWidget> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ImageAnalysisScreen(),
    const GraphWebView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_rounded),
            label: '탐색',
          ),
        ],
      ),
    );
  }
}

class GraphWebView extends StatefulWidget {
  const GraphWebView({super.key});

  @override
  State<StatefulWidget> createState() => _GraphWebViewState();
}

class _GraphWebViewState extends State<GraphWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    const String dbName = "dbaaa09461171041d78bf160281d6313e0";
    final String url = "${dotenv.get('BASE_WEB_VIEW_URL')}/graph/$dbName";

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {
            print("Web Resource Error: ${error.description}");
          },
        ),
      )
      ..addJavaScriptChannel(
        'Android',
        onMessageReceived: (JavaScriptMessage message) {
          print("PhotoName: ${message.message}");
        },
      )
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('탐색'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _controller.reload(),
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

class ImageAnalysisScreen extends StatefulWidget {
  const ImageAnalysisScreen({super.key});

  @override
  State<ImageAnalysisScreen> createState() => _ImageAnalysisScreenState();
}

class _ImageAnalysisScreenState extends State<ImageAnalysisScreen> {
  File? _image;
  bool _isAnalyzing = false;

  final webDio = Dio(
    BaseOptions(baseUrl: '${dotenv.get('BASE_WEB_SERVER_URL')}/'),
  );
  final aiDio = Dio(
    BaseOptions(baseUrl: '${dotenv.get('BASE_AI_SERVER_URL')}/'),
  );

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      _requestAnalysis();
    }
  }

  Future<void> _requestAnalysis() async {
    if (_image == null) return;

    setState(() => _isAnalyzing = true);

    try {
      String fileName = _image!.path.split('/').last;
      String dbName = "dbaaa09461171041d78bf160281d6313e0";

      final webFormData = FormData.fromMap({
        'image': await MultipartFile.fromFile(_image!.path, filename: fileName),
      });

      final aiFormData = FormData.fromMap({
        'addImage': await MultipartFile.fromFile(
          _image!.path,
          filename: fileName,
        ),
        'dbName': dbName,
      });

      await Future.wait([
        webDio.post(
          'android/uploadimg',
          data: webFormData,
          queryParameters: {'dbName': dbName},
        ),

        aiDio.post('android/upload_add', data: aiFormData),
      ]);

      _handleAnalysisFinish(dbName);
    } catch (e) {
      print("Failed: $e");
      if (e is DioException) {
        print("Error: ${e.response?.data}");
      }
    } finally {
      setState(() => _isAnalyzing = false);
    }
  }

  Future<void> _handleAnalysisFinish(String dbName) async {
    try {
      final finishData = FormData.fromMap({
        'finish': 'true',
        'dbName': dbName,
        'rowCount': '1',
      });

      final response = await aiDio.post(
        'android/upload_finish',
        data: finishData,
      );

      if (response.data != null && response.data['images'] != null) {
        List images = response.data['images'];

        for (var person in images) {
          if (person['isFaceExit'] == true && person['imageBytes'] != null) {
            String imageName = person['imageName'];
            String base64String = person['imageBytes'];

            final decodedBytes = base64Decode(base64String);
          }
        }
      }
    } catch (e) {
      print("Finish Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('홈')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!, height: 300)
                : const Text('이미지를 선택해주세요.'),

            const SizedBox(height: 20),

            _isAnalyzing
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _pickImage,
                    child: const Text('갤러리에서 사진 고르기'),
                  ),
          ],
        ),
      ),
    );
  }
}
