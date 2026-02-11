import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/providers/gallery/gallery_provider.dart';
import 'package:presentation/providers/person/person_provider.dart';
import 'package:presentation/routes/router_paths.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOME')),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: LikedPeopleSection()),
          GalleryGridSection(),
        ],
      ),
      floatingActionButton: _buildAnalysisButton(context),
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

class LikedPeopleSection extends StatelessWidget {
  const LikedPeopleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final persons = context.watch<PersonProvider>().homePersons;

    if (persons.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
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
              return GestureDetector(
                onTap: () {
                  context.push(RouterPaths.personDetail, extra: person);
                },
                child: Padding(
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class GalleryGridSection extends StatelessWidget {
  const GalleryGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<GalleryProvider>();

    if (provider.isLoading) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Gallery', style: TextStyle(fontSize: 16)),
                TextButton.icon(
                  onPressed: () =>
                      context.read<GalleryProvider>().handleEditSelected(),
                  icon: const Icon(
                    Icons.add_photo_alternate_outlined,
                    size: 18,
                    color: Color.fromARGB(255, 26, 26, 26),
                  ),
                  label: const Text(
                    "Edit Selected",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 18, 18, 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(2),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              final image = provider.images[index];
              return _buildGalleryItem(context, image);
            }, childCount: provider.images.length),
          ),
        ),
      ],
    );
  }

  Widget _buildGalleryItem(BuildContext context, dynamic image) {
    return GestureDetector(
      onTap: () async {
        final asset = await AssetEntity.fromId(image.id);
        if (asset != null && context.mounted) {
          final file = await asset.file;
          if (file != null) {
            context.push(RouterPaths.photoDetail, extra: file);
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
  }
}
