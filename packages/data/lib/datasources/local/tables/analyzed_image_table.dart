import 'package:drift/drift.dart';

@DataClassName('AnalyzedImageEntity')
class AnalyzedImages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get imageId => text().unique()();
  TextColumn get fileName => text()();
}
