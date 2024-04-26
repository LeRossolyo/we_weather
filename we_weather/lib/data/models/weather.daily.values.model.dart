import 'package:json_annotation/json_annotation.dart';

part 'weather.daily.values.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherDailyValuesModel {
  List<String> time;
  List<int> weatherCode;
  List<double> temperature_2mMax;
  List<double> temperature_2mMin;

  WeatherDailyValuesModel(
      {required this.time,
      required this.weatherCode,
      required this.temperature_2mMax,
      required this.temperature_2mMin});

  factory WeatherDailyValuesModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDailyValuesModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDailyValuesModelToJson(this);
}
