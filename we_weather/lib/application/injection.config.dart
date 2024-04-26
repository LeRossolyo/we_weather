// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weather_orkester_app/application/app.modules.injection.dart'
    as _i8;
import 'package:weather_orkester_app/application/services/localisation.services.dart'
    as _i3;
import 'package:weather_orkester_app/application/services/weather.services.dart'
    as _i7;
import 'package:weather_orkester_app/domain/api/weather.endpoints.dart' as _i6;
import 'package:weather_orkester_app/domain/dio.client.dart' as _i5;
import 'package:weather_orkester_app/presentation/router/app_router.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.LocalisationService>(
        () => _i3.LocalisationService.inject());
    gh.singleton<_i4.AppRouter>(() => appModule.router);
    gh.lazySingleton<_i5.DioClient>(() => appModule.dio);
    gh.factory<_i6.WeatherApi>(() => _i6.WeatherApi(gh<_i5.DioClient>()));
    gh.singleton<_i7.WeatherService>(
        () => _i7.WeatherService.inject(gh<_i6.WeatherApi>()));
    return this;
  }
}

class _$AppModule extends _i8.AppModule {}
