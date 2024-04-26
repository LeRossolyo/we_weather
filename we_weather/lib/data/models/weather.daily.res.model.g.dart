// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.daily.res.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDailyResponseModel _$WeatherDailyResponseModelFromJson(
        Map<String, dynamic> json) =>
    WeatherDailyResponseModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      dailyUnits: WeatherDailyUnitsModel.fromJson(
          json['daily_units'] as Map<String, dynamic>),
      daily: WeatherDailyValuesModel.fromJson(
          json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDailyResponseModelToJson(
        WeatherDailyResponseModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'daily_units': instance.dailyUnits.toJson(),
      'daily': instance.daily.toJson(),
    };
