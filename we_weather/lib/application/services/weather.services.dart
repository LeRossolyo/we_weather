import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_orkester_app/application/injection.dart';
import 'package:weather_orkester_app/data/models/weather.daily.req.model.dart';
import 'package:weather_orkester_app/data/models/weather.daily.res.model.dart';
import 'package:weather_orkester_app/data/models/weather.req.model.dart';
import 'package:weather_orkester_app/data/models/weather.res.model.dart';
import 'package:weather_orkester_app/domain/api/weather.endpoints.dart';

@singleton
class WeatherService {
  final WeatherApi _weatherApi;

  WeatherService(
    this._weatherApi,
  );

  @factoryMethod
  static WeatherService inject(WeatherApi api) {
    return WeatherService(api);
  }

  static WeatherService injected() => getIt<WeatherService>();

  Future<WeatherResponseModel> getWeather(WeatherRequestModel queries) async  {
      try {
        WeatherResponseModel weather = await _weatherApi.getWeather(queries);
        return weather;
      } catch (e) {
        if (e is DioException) {
          debugPrint('statusCode: ${e.response?.statusCode.toString()}');
          debugPrint('response: ${e.response?.data.toString()}');
        }
        throw Exception('Error');
    }
  }  

  Future<WeatherDailyResponseModel> getWeatherDaily(WeatherDailyRequestModel queries) async  {
      try {
        WeatherDailyResponseModel weather = await _weatherApi.getDailyWeather(queries);
        return weather;
      } catch (e) {
        if (e is DioException) {
          debugPrint('statusCode: ${e.response?.statusCode.toString()}');
          debugPrint('response: ${e.response?.data.toString()}');
        }
        throw Exception('Error');
    }
  }   
}