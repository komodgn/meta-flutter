import 'package:data/datasources/local/daos/person_dao.dart';
import 'package:data/datasources/local/tables/analyzed_image_table.dart';
import 'package:data/datasources/local/tables/face_table.dart';
import 'package:data/datasources/local/tables/person_table.dart';
import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@DriftDatabase(tables: [Persons, Faces, AnalyzedImages], daos: [PersonDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}

QueryExecutor openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
