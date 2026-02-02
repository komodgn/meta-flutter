import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:domain/repositories/gallery_repository.dart';
import 'package:domain/entities/gallery_image.dart';

@LazySingleton(as: GalleryRepository)
class GalleryRepositoryImpl implements GalleryRepository {
  @override
  Future<List<GalleryImage>> getAllGalleryImages() async {
    final List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
      filterOption: FilterOptionGroup(
        orders: [
          const OrderOption(type: OrderOptionType.createDate, asc: false),
        ],
      ),
    );

    if (albums.isEmpty) return [];

    final List<AssetEntity> photos = await albums[0].getAssetListRange(
      start: 0,
      end: await albums[0].assetCountAsync,
    );

    return photos
        .map(
          (asset) => GalleryImage(
            id: asset.id,
            name: asset.title ?? "unknown",
            entity: asset,
          ),
        )
        .toList();
  }

  @override
  Future<Uint8List?> getImageBytesById(String id) async {
    final AssetEntity? asset = await AssetEntity.fromId(id);
    return await asset?.originBytes;
  }

  @override
  Future<String?> getFileName({required String id}) async {
    final AssetEntity? asset = await AssetEntity.fromId(id);
    return asset?.title;
  }

  @override
  Future<List<String>> findMatchedUris(List<String> photoNames) async {
    final List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
    );
    if (albums.isEmpty) return [];

    final List<AssetEntity> allAssets = await albums[0].getAssetListRange(
      start: 0,
      end: await albums[0].assetCountAsync,
    );

    return allAssets
        .where((asset) => photoNames.contains(asset.title))
        .map((asset) => asset.id)
        .toList();
  }
}
