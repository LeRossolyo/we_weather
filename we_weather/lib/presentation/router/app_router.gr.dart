// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:weather_orkester_app/presentation/ui/views/location.page.dart'
    as _i1;
import 'package:weather_orkester_app/presentation/ui/views/weather.page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LocationPage.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LocationPage(),
      );
    },
    WeatherPage.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.WeatherPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LocationPage]
class LocationPage extends _i3.PageRouteInfo<void> {
  const LocationPage({List<_i3.PageRouteInfo>? children})
      : super(
          LocationPage.name,
          initialChildren: children,
        );

  static const String name = 'LocationPage';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.WeatherPage]
class WeatherPage extends _i3.PageRouteInfo<void> {
  const WeatherPage({List<_i3.PageRouteInfo>? children})
      : super(
          WeatherPage.name,
          initialChildren: children,
        );

  static const String name = 'WeatherPage';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
