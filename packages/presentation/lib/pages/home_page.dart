import 'package:domain/entities/person.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/pages/photo_detail_screen.dart';
import 'package:presentation/providers/gallery/gallery_provider.dart';
import 'package:presentation/providers/person/person_provider.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final galleryProvider = context.watch<GalleryProvider>();
    final personProvider = context.watch<PersonProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('HOME')),
      body: galleryProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildPersonSection(personProvider.homePersons),

                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Gallery', style: TextStyle(fontSize: 16)),
                      TextButton.icon(
                        onPressed: () =>
                            context.read<GalleryProvider>()
                              ..handleEditSelected(),
                        icon: const Icon(
                          Icons.add_photo_alternate_outlined,
                          size: 18,
                        ),
                        label: const Text(
                          "Edit Selected",
                          style: TextStyle(fontSize: 12),
                        ),
                        style: TextButton.styleFrom(
                          foregroundColor: const Color.fromARGB(
                            255,
                            67,
                            67,
                            67,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(2),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        ),
                    itemCount: galleryProvider.images.length,
                    itemBuilder: (context, index) {
                      final image = galleryProvider.images[index];
                      return GestureDetector(
                        onTap: () async {
                          final asset = await AssetEntity.fromId(image.id);
                          if (asset != null && context.mounted) {
                            final file = await asset.file;
                            if (file != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      PhotoDetailScreen(imageFile: file),
                                ),
                              );
                            }
                          }
                        },
                        child: AssetEntityImage(
                          image.entity!,
                          isOriginal: false,
                          thumbnailSize: const ThumbnailSize.square(200),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
      floatingActionButton: _buildAnalysisButton(context),
    );
  }

  Widget _buildPersonSection(List<Person> persons) {
    if (persons.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text('⭐ Liked People'),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            itemCount: persons.length,
            itemBuilder: (context, index) {
              final person = persons[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: person.representativeFace != null
                          ? MemoryImage(person.representativeFace!.imageData)
                          : null,
                    ),
                    const SizedBox(height: 4),
                    Text(person.inputName),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAnalysisButton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Workmanager().registerOneOffTask(
          "analysis_task_001",
          "fullAnalysisTask",
          constraints: Constraints(networkType: NetworkType.connected),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Scheduled image analysis.")),
        );
      },
      label: const Text('Start image analysis'),
      icon: const Icon(Icons.analytics_outlined),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );
  }
}
