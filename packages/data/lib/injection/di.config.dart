// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/injection/service_module.dart' as _i606;
import 'package:data/repositories/search_repository_impl.dart' as _i14;
import 'package:data/services/ai_service.dart' as _i448;
import 'package:data/services/web_service.dart' as _i1015;
import 'package:dio/dio.dart' as _i361;
import 'package:domain/repositories/search_repository.dart' as _i508;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i361.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i448.AiService>(
      () => serviceModule.aiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i1015.WebService>(
      () => serviceModule.webService(gh<_i361.Dio>()),
    );
    gh.factory<_i508.SearchRepository>(
      () => _i14.SearchRepositoryImpl(
        gh<_i448.AiService>(),
        gh<_i1015.WebService>(),
      ),
    );
    return this;
  }
}

class _$ServiceModule extends _i606.ServiceModule {}
