
import 'package:json_annotation/json_annotation.dart';

part 'weather.values.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherValuesModel {
  String time;
  int interval;
  double temperature_2m;
  int isDay;
  int weatherCode;
  double windSpeed_10m;
  int windDirection_10m;
  int relativeHumidity_2m;

  WeatherValuesModel({
    required this.time,
    required this.interval,
    required this.temperature_2m,
    required this.isDay,
    required this.weatherCode,
    required this.windSpeed_10m,
    required this.windDirection_10m,
    required this.relativeHumidity_2m,
  });  
  
  factory WeatherValuesModel.fromJson(Map<String, dynamic> json) => _$WeatherValuesModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherValuesModelToJson(this);
}