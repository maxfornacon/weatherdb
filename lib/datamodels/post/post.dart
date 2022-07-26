import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/datamodels/application_models.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int pid,
    required String text,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required double longitude,
    required double latitude,
    required double temperature,
    @JsonKey(name: 'air_pressure') required double airPressure,
    required double humidity,

    @Default([])
    @JsonKey(
      name: 'images',
      fromJson: Post._imagesFromJson,
      toJson: Post._imagesToJson,
    ) List<AppImage>? images,

    @JsonKey(
      name: 'users',
    ) required AppUser postedBy,

    @Default([])
    @JsonKey(
      name: 'liked',
      fromJson: Post._usersFromJson,
      toJson: Post._usersToJson,
    )
    List<Liked>? likes,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  static List<AppImage>? _imagesFromJson(List<dynamic>? list) {
    if (list == null) {
      return [];
    }

    return list.map((e) => AppImage.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>>? _imagesToJson(
      List<AppImage>? list) {
    if (list == null) {
      return [];
    }

    return list.map((e) => e.toJson()).toList();
  }

  static List<Liked>? _usersFromJson(List<dynamic>? list) {
    if (list == null) {
      return [];
    }

    return list.map((e) => Liked.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>>? _usersToJson(
      List<Liked>? list) {
    if (list == null) {
      return [];
    }

    return list.map((e) => e.toJson()).toList();
  }
}

@freezed
class AppImage with _$AppImage {
  const factory AppImage({
    @JsonKey(name: 'iid') required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String title,
    @JsonKey(name: 'storage_path') required String url,
    @JsonKey(name: 'post_id') required int postId,
  }) = _AppImage;

  factory AppImage.fromJson(Map<String, dynamic> json) => _$AppImageFromJson(json);
}

@freezed
class Liked with _$Liked {
  const factory Liked({
    @JsonKey(name: 'liked_by') required String userId,
    @JsonKey(name: 'liked_post') required int postId,
    @JsonKey(name: 'users') AppUser? user,
  }) = _Liked;

  factory Liked.fromJson(Map<String, dynamic> json) =>
      _$LikedFromJson(json);
}


@freezed
class PostDto with _$PostDto {
  const factory PostDto({
    required String text,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required double longitude,
    required double latitude,
    required double temperature,
    @JsonKey(name: 'air_pressure') required double airPressure,
    required double humidity,
    @JsonKey(name: 'posted_by') required String postedBy,

  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}

