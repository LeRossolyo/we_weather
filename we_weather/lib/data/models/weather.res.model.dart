import 'package:json_annotation/json_annotation.dart';
import 'package:weather_orkester_app/data/models/weather.units.model.dart';
import 'package:weather_orkester_app/data/models/weather.values.model.dart';

part 'weather.res.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherResponseModel {
  double latitude;
  double longitude;
  double generationtimeMs;
  String timezone;
  String timezoneAbbreviation;
  double elevation;
  WeatherUnitModel currentUnits;
  WeatherValuesModel current;

  WeatherResponseModel({
    required this.latitude,
    required this.longitude,
    required this.generationtimeMs,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentUnits,
    required this.current,
  });

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseModelToJson(this);
 
}