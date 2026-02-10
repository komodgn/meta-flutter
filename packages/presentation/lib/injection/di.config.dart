// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/usecases/get_all_person_use_case.dart' as _i585;
import 'package:domain/usecases/get_gallery_images_use_case.dart' as _i923;
import 'package:domain/usecases/get_graph_use_case.dart' as _i534;
import 'package:domain/usecases/get_home_display_person_use_case.dart' as _i504;
import 'package:domain/usecases/get_person_photos_use_case.dart' as _i912;
import 'package:domain/usecases/get_search_use_case.dart' as _i690;
import 'package:domain/usecases/person/toggle_home_display_use_case.dart'
    as _i763;
import 'package:domain/usecases/update_photo_permission_use_case.dart' as _i802;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:presentation/providers/gallery/gallery_provider.dart' as _i312;
import 'package:presentation/providers/graph/graph_provider.dart' as _i725;
import 'package:presentation/providers/person/person_detail_provider.dart'
    as _i337;
import 'package:presentation/providers/person/person_provider.dart' as _i644;
import 'package:presentation/providers/search/drag_search_provider.dart'
    as _i91;
import 'package:presentation/providers/search/nl_search_provider.dart' as _i269;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i91.DragSearchProvider>(
      () => _i91.DragSearchProvider(
        getSearchUseCase: gh<_i690.GetSearchUseCase>(),
      ),
    );
    gh.factory<_i269.NlSearchProvider>(
      () => _i269.NlSearchProvider(
        getSearchUseCase: gh<_i690.GetSearchUseCase>(),
      ),
    );
    gh.factory<_i312.GalleryProvider>(
      () => _i312.GalleryProvider(
        getGalleryImagesUseCase: gh<_i923.GetGalleryImagesUseCase>(),
        updatePhotoPermissionUseCase: gh<_i802.UpdatePhotoPermissionUseCase>(),
      ),
    );
    gh.factory<_i725.GraphProvider>(
      () => _i725.GraphProvider(getGraphUseCase: gh<_i534.GetGraphUseCase>()),
    );
    gh.factory<_i337.PersonDetailProvider>(
      () => _i337.PersonDetailProvider(
        getPersonPhotosUseCase: gh<_i912.GetPersonPhotosUseCase>(),
        toggleHomeDisplayUseCase: gh<_i763.ToggleHomeDisplayUseCase>(),
      ),
    );
    gh.factory<_i644.PersonProvider>(
      () => _i644.PersonProvider(
        getHomeDisplayPersonUseCase: gh<_i504.GetHomeDisplayPersonUseCase>(),
        getAllPersonUseCase: gh<_i585.GetAllPersonUseCase>(),
      ),
    );
    return this;
  }
}
