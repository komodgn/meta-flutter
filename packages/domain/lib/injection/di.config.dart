// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/repositories/gallery_repository.dart' as _i959;
import 'package:domain/repositories/image_analysis_repository.dart' as _i23;
import 'package:domain/repositories/neo4j_repository.dart' as _i524;
import 'package:domain/repositories/person_repository.dart' as _i234;
import 'package:domain/repositories/search_repository.dart' as _i508;
import 'package:domain/usecases/get_gallery_images_use_case.dart' as _i923;
import 'package:domain/usecases/person/person_use_case.dart' as _i880;
import 'package:domain/usecases/run_full_analysis_use_case.dart' as _i200;
import 'package:domain/usecases/search/get_search_use_case.dart' as _i356;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i200.RunFullAnalysisUseCase>(
      () => _i200.RunFullAnalysisUseCase(
        imageAnalysisRepository: gh<_i23.ImageAnalysisRepository>(),
        galleryRepository: gh<_i959.GalleryRepository>(),
        personRepository: gh<_i234.PersonRepository>(),
        neo4jRepository: gh<_i524.Neo4jRepository>(),
      ),
    );
    gh.factory<_i923.GetGalleryImagesUseCase>(
      () => _i923.GetGalleryImagesUseCase(gh<_i959.GalleryRepository>()),
    );
    gh.factory<_i356.GetSearchUseCase>(
      () => _i356.GetSearchUseCase(
        gh<_i508.SearchRepository>(),
        gh<_i234.PersonRepository>(),
        gh<_i959.GalleryRepository>(),
        gh<_i524.Neo4jRepository>(),
      ),
    );
    gh.factory<_i880.PersonUseCase>(
      () => _i880.PersonUseCase(gh<_i234.PersonRepository>()),
    );
    return this;
  }
}
