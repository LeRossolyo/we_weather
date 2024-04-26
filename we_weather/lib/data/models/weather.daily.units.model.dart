
import 'package:json_annotation/json_annotation.dart';

part 'weather.daily.units.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherDailyUnitsModel {
  String time;
  String weatherCode;
  String temperature_2mMax;
  String temperature_2mMin;

  WeatherDailyUnitsModel({
    required this.time,
    required this.weatherCode,
    required this.temperature_2mMax,
    required this.temperature_2mMin
  });  

  factory WeatherDailyUnitsModel.fromJson(Map<String, dynamic> json) => _$WeatherDailyUnitsModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDailyUnitsModelToJson(this);
}