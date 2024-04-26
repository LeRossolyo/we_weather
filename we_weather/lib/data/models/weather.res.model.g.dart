// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.res.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponseModel _$WeatherResponseModelFromJson(
        Map<String, dynamic> json) =>
    WeatherResponseModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      currentUnits: WeatherUnitModel.fromJson(
          json['current_units'] as Map<String, dynamic>),
      current:
          WeatherValuesModel.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseModelToJson(
        WeatherResponseModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'current_units': instance.currentUnits.toJson(),
      'current': instance.current.toJson(),
    };
