import 'package:domain/entities/person.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/pages/photo_detail_screen.dart';
import 'package:presentation/providers/person/person_detail_provider.dart';
import 'package:presentation/providers/person/person_provider.dart';
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
    final allPersons = context.watch<PersonProvider>().allPersons;

    final currentPerson = allPersons.firstWhere(
      (p) => p.id == widget.person.id,
      orElse: () => widget.person,
    );

    final detailProvider = context.watch<PersonDetailProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(currentPerson.inputName),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PersonDetailProvider>().toggleHomeDisplay(
                currentPerson,
              );
            },
            icon: Icon(
              currentPerson.isHomeDisplay ? Icons.star : Icons.star_border,
              color: currentPerson.isHomeDisplay ? Colors.amberAccent : null,
            ),
          ),
        ],
      ),
      body: detailProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : _buildResults(detailProvider),
    );
  }

  Widget _buildResults(PersonDetailProvider provider) {
    if (provider.personPhotos.isEmpty) {
      return const Center(child: Text('No photos found in gallery.'));
    }
    return GridView.builder(
      itemCount: provider.personPhotos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        final photo = provider.personPhotos[index];

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
    );
  }
}
