// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzed_image_dao.dart';

// ignore_for_file: type=lint
mixin _$AnalyzedImageDaoMixin on DatabaseAccessor<AppDatabase> {
  $AnalyzedImagesTable get analyzedImages => attachedDatabase.analyzedImages;
  AnalyzedImageDaoManager get managers => AnalyzedImageDaoManager(this);
}

class AnalyzedImageDaoManager {
  final _$AnalyzedImageDaoMixin _db;
  AnalyzedImageDaoManager(this._db);
  $$AnalyzedImagesTableTableManager get analyzedImages =>
      $$AnalyzedImagesTableTableManager(
        _db.attachedDatabase,
        _db.analyzedImages,
      );
}
