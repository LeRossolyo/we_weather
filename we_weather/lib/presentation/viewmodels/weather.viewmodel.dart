import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:weather_orkester_app/application/services/localisation.services.dart';
import 'package:weather_orkester_app/application/services/weather.services.dart';
import 'package:weather_orkester_app/data/models/weather.daily.req.model.dart';
import 'package:weather_orkester_app/data/models/weather.daily.res.model.dart';
import 'package:weather_orkester_app/data/models/weather.req.model.dart';
import 'package:weather_orkester_app/data/models/weather.res.model.dart';

class WeatherPageViewModel extends ChangeNotifier {
  final LocalisationService _localisationService;
  final WeatherService _weatherService;
  final StackRouter _router;
  WeatherResponseModel? weather;
  WeatherDailyResponseModel? weatherDaily;
  Placemark? localityName;
  bool loading = false;

  WeatherPageViewModel(BuildContext context, this._localisationService,
      this._weatherService, this._router) {
    load(context);
  }

  factory WeatherPageViewModel.init(BuildContext context) {
    return WeatherPageViewModel(context, LocalisationService.injected(),
        WeatherService.injected(), AutoRouter.of(context));
  }

  Future<void> load(BuildContext context) async {
    loading = true;
    notifyListeners();
    final hasPosition = await _localisationService.getCurrentPosition(context);
    if (hasPosition) {
      await getWeather();
      await getDailyWeather();
    } else {
      _router.replaceNamed('/location');
    }
  }

  Future<void> getWeather() async {
    try {
      loading = true;
      notifyListeners();
      weather = await _weatherService.getWeather(
        WeatherRequestModel(
          latitude: _localisationService.currentPosition!.latitude,
          longitude: _localisationService.currentPosition!.longitude,
          current:
              'temperature_2m,is_day,weather_code,wind_speed_10m,wind_direction_10m,relative_humidity_2m',
        ),
      );
      localityName = await _localisationService.findCityNameFromPosition();
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> getDailyWeather() async {
    try {
      loading = true;
      notifyListeners();
      weatherDaily =
          await _weatherService.getWeatherDaily(WeatherDailyRequestModel(
        latitude: _localisationService.currentPosition!.latitude,
        longitude: _localisationService.currentPosition!.longitude,
        daily:
            'weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset',
      ));
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();
    }
  }
}
