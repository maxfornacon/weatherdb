// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      pid: json['pid'] as int,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      airPressure: (json['air_pressure'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      postedBy: AppUser.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'pid': instance.pid,
      'text': instance.text,
      'created_at': instance.createdAt.toIso8601String(),
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'temperature': instance.temperature,
      'air_pressure': instance.airPressure,
      'humidity': instance.humidity,
      'users': instance.postedBy,
    };
