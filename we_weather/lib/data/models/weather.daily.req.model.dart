

import 'package:json_annotation/json_annotation.dart';

part 'weather.daily.req.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherDailyRequestModel {
  double? latitude;
  double? longitude;
  String? daily;

  WeatherDailyRequestModel({
    this.latitude,
    this.longitude,
    this.daily,
  }); 

  factory WeatherDailyRequestModel.fromJson(Map<String, dynamic> json) => _$WeatherDailyRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDailyRequestModelToJson(this);
}