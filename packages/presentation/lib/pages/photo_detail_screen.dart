import 'dart:io';
import 'package:domain/entities/search_result.dart';
import 'package:flutter/material.dart';
import 'package:domain/entities/circle.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/providers/search/drag_search_provider.dart';
import 'package:provider/provider.dart';

class PhotoDetailScreen extends StatefulWidget {
  final File imageFile;

  const PhotoDetailScreen({super.key, required this.imageFile});

  @override
  State<PhotoDetailScreen> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends State<PhotoDetailScreen> {
  bool _isDragMode = false;
  List<Circle> _circles = [];
  Offset? _startPos;
  Offset? _currentPos;

  @override
  Widget build(BuildContext context) {
    final searchProvider = context.watch<DragSearchProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("DETAIL"),
        actions: [
          IconButton(
            icon: Icon(_isDragMode ? Icons.check : Icons.ads_click),
            onPressed: () {
              setState(() {
                _isDragMode = !_isDragMode;
                if (!_isDragMode && _circles.isNotEmpty) {
                  context.read<DragSearchProvider>().fetchDragResult(
                    imageFile: widget.imageFile,
                    circles: _circles,
                  );
                }
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Center(child: Image.file(widget.imageFile)),
                if (_isDragMode)
                  GestureDetector(
                    onPanStart: (details) {
                      setState(() => _startPos = details.localPosition);
                    },
                    onPanUpdate: (details) {
                      setState(() => _currentPos = details.localPosition);
                    },
                    onPanEnd: (details) {
                      if (_startPos != null && _currentPos != null) {
                        final renderBox =
                            context.findRenderObject() as RenderBox;
                        final size = renderBox.size;

                        final radius = (_currentPos! - _startPos!).distance;
                        setState(() {
                          _circles.add(
                            Circle(
                              centerX: _startPos!.dx / size.width,
                              centerY: _startPos!.dy / size.height,
                              radius: radius / size.width,
                            ),
                          );
                          _startPos = null;
                          _currentPos = null;
                        });
                      }
                    },
                    child: CustomPaint(
                      painter: CirclePainter(_circles, _startPos, _currentPos),
                      size: Size.infinite,
                    ),
                  ),
              ],
            ),
          ),
          _buildBottomArea(searchProvider),
        ],
      ),
    );
  }

  Widget _buildBottomArea(DragSearchProvider provider) {
    if (provider.isLoading) {
      return const SizedBox(
        height: 250,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (provider.result != null && provider.result!.groups.isNotEmpty) {
      return Container(
        height: 250,
        color: Colors.black.withOpacity(0.05),
        child: _buildResultList(provider.result!.groups),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildResultList(List<PhotoGroup> groups) {
    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                group.categoryName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: group.images.length,
                itemBuilder: (context, imgIndex) {
                  final image = group.images[imgIndex];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: image.entity != null
                            ? AssetEntityImage(
                                image.entity!,
                                isOriginal: false,
                                fit: BoxFit.cover,
                              )
                            : const Icon(Icons.image_not_supported),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class CirclePainter extends CustomPainter {
  final List<Circle> circles;
  final Offset? start;
  final Offset? current;

  CirclePainter(this.circles, this.start, this.current);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    for (var circle in circles) {
      canvas.drawCircle(
        Offset(circle.centerX * size.width, circle.centerY * size.height),
        circle.radius * size.width,
        paint,
      );
    }

    if (start != null && current != null) {
      final dragPaint = Paint()
        ..color = const Color.fromARGB(131, 255, 255, 255)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4;
      canvas.drawCircle(start!, (current! - start!).distance, dragPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
