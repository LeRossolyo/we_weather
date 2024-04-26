import 'package:dio/dio.dart';

class DioClient with DioMixin implements Dio {
  DioClient() {
    options = BaseOptions(baseUrl: 'https://api.open-meteo.com/v1', headers: {'Content-Type': 'application/json'});
    httpClientAdapter = HttpClientAdapter();
  }
}
