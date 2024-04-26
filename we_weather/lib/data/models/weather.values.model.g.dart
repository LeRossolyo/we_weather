// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.values.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherValuesModel _$WeatherValuesModelFromJson(Map<String, dynamic> json) =>
    WeatherValuesModel(
      time: json['time'] as String,
      interval: (json['interval'] as num).toInt(),
      temperature_2m: (json['temperature_2m'] as num).toDouble(),
      isDay: (json['is_day'] as num).toInt(),
      weatherCode: (json['weather_code'] as num).toInt(),
      windSpeed_10m: (json['wind_speed_10m'] as num).toDouble(),
      windDirection_10m: (json['wind_direction_10m'] as num).toInt(),
      relativeHumidity_2m: (json['relative_humidity_2m'] as num).toInt(),
    );

Map<String, dynamic> _$WeatherValuesModelToJson(WeatherValuesModel instance) =>
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
