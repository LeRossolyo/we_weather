import 'package:json_annotation/json_annotation.dart';

part 'weather.units.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherUnitModel {
  String time;
  String interval;
  String temperature_2m;
  String isDay;
  String weatherCode;
  String windSpeed_10m;
  String windDirection_10m;
  String relativeHumidity_2m;

  WeatherUnitModel({
    required this.time,
    required this.interval,
    required this.temperature_2m,
    required this.isDay,
    required this.weatherCode,
    required this.windSpeed_10m,
    required this.windDirection_10m,
    required this.relativeHumidity_2m,
  });

  factory WeatherUnitModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherUnitModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherUnitModelToJson(this);
}
