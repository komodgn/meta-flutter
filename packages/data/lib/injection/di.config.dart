// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/datasources/local/app_database.dart' as _i353;
import 'package:data/datasources/local/daos/analyzed_image_dao.dart' as _i589;
import 'package:data/datasources/local/daos/person_dao.dart' as _i504;
import 'package:data/datasources/local/prefs/analysis_metadata_storage.dart'
    as _i307;
import 'package:data/datasources/local/prefs/neo4j_config_storage.dart'
    as _i318;
import 'package:data/injection/database_module.dart' as _i1021;
import 'package:data/injection/service_module.dart' as _i606;
import 'package:data/repositories/gallery_repository_impl.dart' as _i37;
import 'package:data/repositories/graph_reponsitory_impl.dart' as _i221;
import 'package:data/repositories/image_analysis_repository_impl.dart'
    as _i1060;
import 'package:data/repositories/neo4j_repository_impl.dart' as _i325;
import 'package:data/repositories/person_repository_impl.dart' as _i802;
import 'package:data/repositories/search_repository_impl.dart' as _i14;
import 'package:data/services/ai_service.dart' as _i448;
import 'package:data/services/open_ai_service.dart' as _i330;
import 'package:data/services/web_service.dart' as _i1015;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/repositories/gallery_repository.dart' as _i959;
import 'package:domain/repositories/graph_repository.dart' as _i399;
import 'package:domain/repositories/image_analysis_repository.dart' as _i23;
import 'package:domain/repositories/neo4j_repository.dart' as _i524;
import 'package:domain/repositories/person_repository.dart' as _i234;
import 'package:domain/repositories/search_repository.dart' as _i508;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final databaseModule = _$DatabaseModule();
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i353.AppDatabase>(() => databaseModule.appDatabase);
    gh.lazySingleton<_i361.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i448.AIService>(
      () => serviceModule.aiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i1015.WebService>(
      () => serviceModule.webService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i330.OpenAIService>(
      () => serviceModule.openAIService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i504.PersonDao>(
      () => databaseModule.personDao(gh<_i353.AppDatabase>()),
    );
    gh.lazySingleton<_i589.AnalyzedImageDao>(
      () => databaseModule.analyzedImageDao(gh<_i353.AppDatabase>()),
    );
    gh.lazySingleton<_i959.GalleryRepository>(
      () => _i37.GalleryRepositoryImpl(),
    );
    gh.lazySingleton<_i307.AnalysisMetadataStorage>(
      () => _i307.AnalysisMetadataStorageImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i318.Neo4jConfigStorage>(
      () => _i318.Neo4jConfigStorageImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i508.SearchRepository>(
      () => _i14.SearchRepositoryImpl(
        gh<_i448.AIService>(),
        gh<_i1015.WebService>(),
        gh<_i330.OpenAIService>(),
      ),
    );
    gh.lazySingleton<_i524.Neo4jRepository>(
      () => _i325.Neo4jRepositoryImpl(
        neo4jConfigStorage: gh<_i318.Neo4jConfigStorage>(),
      ),
    );
    gh.lazySingleton<_i23.ImageAnalysisRepository>(
      () => _i1060.ImageAnalysisRepositoryImpl(
        webService: gh<_i1015.WebService>(),
        aiService: gh<_i448.AIService>(),
        analyzedImageDao: gh<_i589.AnalyzedImageDao>(),
        analysisMetadataStorage: gh<_i307.AnalysisMetadataStorage>(),
      ),
    );
    gh.lazySingleton<_i234.PersonRepository>(
      () => _i802.PersonRepositoryImpl(
        gh<_i504.PersonDao>(),
        gh<_i448.AIService>(),
        gh<_i1015.WebService>(),
        gh<_i524.Neo4jRepository>(),
      ),
    );
    gh.lazySingleton<_i399.GraphRepository>(
      () => _i221.GraphRepositoryImpl(
        neo4jRepository: gh<_i524.Neo4jRepository>(),
      ),
    );
    return this;
  }
}

class _$DatabaseModule extends _i1021.DatabaseModule {}

class _$ServiceModule extends _i606.ServiceModule {}
