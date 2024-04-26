// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.units.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherUnitModel _$WeatherUnitModelFromJson(Map<String, dynamic> json) =>
    WeatherUnitModel(
      time: json['time'] as String,
      interval: json['interval'] as String,
      temperature_2m: json['temperature_2m'] as String,
      isDay: json['is_day'] as String,
      weatherCode: json['weather_code'] as String,
      windSpeed_10m: json['wind_speed_10m'] as String,
      windDirection_10m: json['wind_direction_10m'] as String,
      relativeHumidity_2m: json['relative_humidity_2m'] as String,
    );

Map<String, dynamic> _$WeatherUnitModelToJson(WeatherUnitModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature_2m,
      'is_day': instance.isDay,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed_10m,
      'wind_direction_10m': instance.windDirection_10m,
      'relative_humidity_2m': instance.relativeHumidity_2m,
    };
