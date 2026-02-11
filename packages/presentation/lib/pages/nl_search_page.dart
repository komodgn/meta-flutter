import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:presentation/providers/search/nl_search_provider.dart';
import 'package:presentation/routes/router_paths.dart';
import 'package:provider/provider.dart';

class NLSearchScreen extends StatefulWidget {
  const NLSearchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NLSearchScreenState();
}

class _NLSearchScreenState extends State<NLSearchScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchProvider = context.watch<NlSearchProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('SEARCH')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'e.g. "Food I had in Seoul on a summer night"',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => searchProvider.fetchNLSearchResult(
                    query: _controller.text,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ),
              onSubmitted: (value) =>
                  searchProvider.fetchNLSearchResult(query: value),
            ),
          ),
          Expanded(
            child: searchProvider.isLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildResults(searchProvider),
          ),
        ],
      ),
    );
  }

  Widget _buildResults(NlSearchProvider provider) {
    if (provider.searchResults.isEmpty) {
      return const Center(child: Text('No results found.'));
    }
    return GridView.builder(
      padding: const EdgeInsets.all(2),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: provider.searchResults.length,
      itemBuilder: (context, index) {
        final photo = provider.searchResults[index];
        return GestureDetector(
          onTap: () async {
            final asset = await AssetEntity.fromId(photo.id);
            if (asset != null && context.mounted) {
              final file = await asset.file;
              if (file != null) {
                context.push(RouterPaths.photoDetail, extra: file);
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
