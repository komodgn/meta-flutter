import 'package:drift/drift.dart';

@DataClassName('PersonEntity')
class Persons extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get systemName => text()();
  TextColumn get inputName => text()();
  TextColumn get phoneNumber => text().withDefault(const Constant(""))();
  BoolColumn get isHomeDisplay =>
      boolean().withDefault(const Constant(false))();
  IntColumn get representativeFaceId => integer().nullable()();
}
