

import 'package:json_annotation/json_annotation.dart';

part 'weather.req.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherRequestModel {
  double? latitude;
  double? longitude;
  String? current;

  WeatherRequestModel({
    this.latitude,
    this.longitude,
    this.current,
  }); 

  factory WeatherRequestModel.fromJson(Map<String, dynamic> json) => _$WeatherRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherRequestModelToJson(this);
}