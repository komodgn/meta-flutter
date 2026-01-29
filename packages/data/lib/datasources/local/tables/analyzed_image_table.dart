import 'package:drift/drift.dart';

@DataClassName('AnalyzedImageEntity')
class AnalyzedImages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get imagePath => text()();
  TextColumn get fileName => text()();
}
