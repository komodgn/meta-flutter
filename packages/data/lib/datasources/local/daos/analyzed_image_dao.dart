import 'package:data/datasources/local/app_database.dart';
import 'package:data/datasources/local/tables/analyzed_image_table.dart';
import 'package:drift/drift.dart';

part 'analyzed_image_dao.g.dart';

@DriftAccessor(tables: [AnalyzedImages])
class AnalyzedImageDao extends DatabaseAccessor<AppDatabase>
    with _$AnalyzedImageDaoMixin {
  AnalyzedImageDao(AppDatabase db) : super(db);

  Future<int> insertPath(AnalyzedImagesCompanion entry) {
    return into(analyzedImages).insert(entry, mode: InsertMode.insertOrReplace);
  }

  Future<void> insertAllPaths(List<AnalyzedImagesCompanion> entities) async {
    await batch((batch) {
      batch.insertAll(
        analyzedImages,
        entities,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  Future<int> deletePath(String path) {
    return (delete(
      analyzedImages,
    )..where((t) => t.imagePath.equals(path))).go();
  }

  Future<List<String>> getAllAnalyzedPaths() async {
    final query = selectOnly(analyzedImages)
      ..addColumns([analyzedImages.imagePath]);
    final rows = await query.get();
    return rows.map((row) => row.read(analyzedImages.imagePath)!).toList();
  }

  Future<String?> getFileNameByPath(String path) async {
    final query = select(analyzedImages)
      ..where((t) => t.imagePath.equals(path))
      ..limit(1);
    final row = await query.getSingleOrNull();
    return row?.fileName;
  }

  Future<void> runInTransaction(Future<void> Function() action) async {
    await transaction(action);
  }
}
