import 'package:domain/entities/person.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/pages/photo_detail_screen.dart';
import 'package:presentation/providers/person/person_detail_provider.dart';
import 'package:provider/provider.dart';

class PersonDetailPage extends StatefulWidget {
  final Person person;

  PersonDetailPage({super.key, required this.person});

  @override
  State<StatefulWidget> createState() => _PersonDetailPageState();
}

class _PersonDetailPageState extends State<PersonDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PersonDetailProvider>().loadPersonPhotos(
        widget.person.inputName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final detailProvider = context.watch<PersonDetailProvider>();

    return Scaffold(
      appBar: AppBar(title: Text(widget.person.inputName)),
      body: detailProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : detailProvider.personPhotos.isEmpty
          ? const Center(child: Text('No photos found in gallery.'))
          : GridView.builder(
              itemCount: detailProvider.personPhotos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                final photo = detailProvider.personPhotos[index];

                return GestureDetector(
                  onTap: () async {
                    final asset = await AssetEntity.fromId(photo.id);
                    if (asset != null && context.mounted) {
                      final file = await asset.file;
                      if (file != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PhotoDetailScreen(imageFile: file),
                          ),
                        );
                      }
                    }
                  },
                  child: AssetEntityImage(
                    photo.entity!,
                    isOriginal: false,
                    thumbnailSize: const ThumbnailSize.square(200),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
    );
  }
}
