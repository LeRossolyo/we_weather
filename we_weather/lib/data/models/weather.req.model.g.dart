// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.req.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherRequestModel _$WeatherRequestModelFromJson(Map<String, dynamic> json) =>
    WeatherRequestModel(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      current: json['current'] as String?,
    );

Map<String, dynamic> _$WeatherRequestModelToJson(
        WeatherRequestModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current': instance.current,
    };
