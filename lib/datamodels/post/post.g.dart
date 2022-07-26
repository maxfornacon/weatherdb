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
      images: json['images'] == null
          ? const []
          : Post._imagesFromJson(json['images'] as List?),
      postedBy: AppUser.fromJson(json['users'] as Map<String, dynamic>),
      likes: json['liked'] == null
          ? const []
          : Post._usersFromJson(json['liked'] as List?),
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
      'images': Post._imagesToJson(instance.images),
      'users': instance.postedBy,
      'liked': Post._usersToJson(instance.likes),
    };

_$_AppImage _$$_AppImageFromJson(Map<String, dynamic> json) => _$_AppImage(
      id: json['iid'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      title: json['title'] as String,
      url: json['storage_path'] as String,
      postId: json['post_id'] as int,
    );

Map<String, dynamic> _$$_AppImageToJson(_$_AppImage instance) =>
    <String, dynamic>{
      'iid': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'storage_path': instance.url,
      'post_id': instance.postId,
    };

_$_AppImageDto _$$_AppImageDtoFromJson(Map<String, dynamic> json) =>
    _$_AppImageDto(
      createdAt: DateTime.parse(json['created_at'] as String),
      title: json['title'] as String,
      url: json['storage_path'] as String,
      postId: json['post_id'] as int,
    );

Map<String, dynamic> _$$_AppImageDtoToJson(_$_AppImageDto instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'storage_path': instance.url,
      'post_id': instance.postId,
    };

_$_Liked _$$_LikedFromJson(Map<String, dynamic> json) => _$_Liked(
      userId: json['liked_by'] as String,
      postId: json['liked_post'] as int,
      user: json['users'] == null
          ? null
          : AppUser.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LikedToJson(_$_Liked instance) => <String, dynamic>{
      'liked_by': instance.userId,
      'liked_post': instance.postId,
      'users': instance.user,
    };

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      text: json['text'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      airPressure: (json['air_pressure'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      postedBy: json['posted_by'] as String,
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'created_at': instance.createdAt.toIso8601String(),
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'temperature': instance.temperature,
      'air_pressure': instance.airPressure,
      'humidity': instance.humidity,
      'posted_by': instance.postedBy,
    };
