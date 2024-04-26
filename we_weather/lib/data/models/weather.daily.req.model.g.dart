// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.daily.req.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDailyRequestModel _$WeatherDailyRequestModelFromJson(
        Map<String, dynamic> json) =>
    WeatherDailyRequestModel(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      daily: json['daily'] as String?,
    );

Map<String, dynamic> _$WeatherDailyRequestModelToJson(
        WeatherDailyRequestModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'daily': instance.daily,
    };
