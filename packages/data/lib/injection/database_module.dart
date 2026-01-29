import 'package:data/datasources/local/app_database.dart';
import 'package:data/datasources/local/daos/person_dao.dart';
import 'package:data/datasources/local/daos/analyzed_image_dao.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DatabaseModule {
  @lazySingleton
  AppDatabase get appDatabase => AppDatabase(openConnection());

  @lazySingleton
  PersonDao personDao(AppDatabase db) => PersonDao(db);

  @lazySingleton
  AnalyzedImageDao analyzedImageDao(AppDatabase db) => AnalyzedImageDao(db);
}
