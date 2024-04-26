import 'package:auto_route/auto_route.dart';
import 'package:weather_orkester_app/presentation/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WeatherPage.page, path:'/weather', initial: true),
    AutoRoute(page: LocationPage.page, path: '/location',)
  ];
}
