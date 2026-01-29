import 'package:data/datasources/local/tables/person_table.dart';
import 'package:drift/drift.dart';

@DataClassName('FaceEntity')
class Faces extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get personId =>
      integer().references(Persons, #id, onDelete: KeyAction.cascade)();
  TextColumn get systemName => text()();
  BlobColumn get imageData => blob()();

  @override
  List<Set<Column>> get indexes => [
    {personId},
  ];
}
