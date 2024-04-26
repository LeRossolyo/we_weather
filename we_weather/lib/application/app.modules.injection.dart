import 'package:injectable/injectable.dart';
import 'package:weather_orkester_app/domain/dio.client.dart';
import 'package:weather_orkester_app/presentation/router/app_router.dart';

@module
abstract class AppModule {
  @singleton
  AppRouter get router => AppRouter();

  @lazySingleton
  DioClient get dio => DioClient();
}
