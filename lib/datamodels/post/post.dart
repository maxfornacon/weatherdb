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
    @JsonKey(
      name: 'users',
    ) required AppUser postedBy,


  //   @Default([])
  //   @JsonKey(
  //     name: 'liked_by',
  //     fromJson: Post._productsFromJson,
  //     toJson: Post._productsToJson,
  //   )
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

