import 'package:json_annotation/json_annotation.dart';
import 'package:weather_orkester_app/data/models/weather.daily.units.model.dart';
import 'package:weather_orkester_app/data/models/weather.daily.values.model.dart';

part 'weather.daily.res.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherDailyResponseModel {
  double latitude;
  double longitude;
  double generationtimeMs;
  String timezone;
  String timezoneAbbreviation;
  double elevation;
  WeatherDailyUnitsModel dailyUnits;
  WeatherDailyValuesModel daily;

  WeatherDailyResponseModel({
    required this.latitude,
    required this.longitude,
    required this.generationtimeMs,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.dailyUnits,
    required this.daily,
  });

  factory WeatherDailyResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherDailyResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDailyResponseModelToJson(this);
 
}