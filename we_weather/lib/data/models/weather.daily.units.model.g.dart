// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.daily.units.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDailyUnitsModel _$WeatherDailyUnitsModelFromJson(
        Map<String, dynamic> json) =>
    WeatherDailyUnitsModel(
      time: json['time'] as String,
      weatherCode: json['weather_code'] as String,
      temperature_2mMax: json['temperature_2m_max'] as String,
      temperature_2mMin: json['temperature_2m_min'] as String,
    );

Map<String, dynamic> _$WeatherDailyUnitsModelToJson(
        WeatherDailyUnitsModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature_2mMax,
      'temperature_2m_min': instance.temperature_2mMin,
    };
