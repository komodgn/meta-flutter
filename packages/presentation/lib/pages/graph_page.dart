import 'package:flutter/material.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/providers/graph/graph_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

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

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..addJavaScriptChannel(
        'Android',
        onMessageReceived: (JavaScriptMessage message) {
          context.read<GraphProvider>().onPhotoSelected(message.message);
        },
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {
            debugPrint("Web Resource Error: ${error.description}");
          },
        ),
      );

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = context.read<GraphProvider>();
      await provider.initGraph();
      if (provider.url.isNotEmpty) {
        _controller.loadRequest(Uri.parse(provider.url));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<GraphProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('META GRAPH'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _controller.reload(),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: provider.isLoading
                ? const Center(child: CircularProgressIndicator())
                : WebViewWidget(controller: _controller),
          ),

          if (provider.selectedImages.isNotEmpty)
            Expanded(
              flex: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: provider.selectedImages.length,
                itemBuilder: (context, index) {
                  final img = provider.selectedImages[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AssetEntityImage(
                      img.entity!,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
