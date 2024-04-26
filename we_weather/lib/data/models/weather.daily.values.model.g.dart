// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.daily.values.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDailyValuesModel _$WeatherDailyValuesModelFromJson(
        Map<String, dynamic> json) =>
    WeatherDailyValuesModel(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      temperature_2mMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperature_2mMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$WeatherDailyValuesModelToJson(
        WeatherDailyValuesModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature_2mMax,
      'temperature_2m_min': instance.temperature_2mMin,
    };
