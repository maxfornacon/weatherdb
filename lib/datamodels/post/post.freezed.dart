// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get pid => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_pressure')
  double get airPressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  AppUser get postedBy => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
  List<Liked>? get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {int pid,
      String text,
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      double longitude,
      double latitude,
      double temperature,
      @JsonKey(name: 'air_pressure')
          double airPressure,
      double humidity,
      @JsonKey(name: 'users')
          AppUser postedBy,
      @JsonKey(name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
          List<Liked>? likes});

  $AppUserCopyWith<$Res> get postedBy;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? pid = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? temperature = freezed,
    Object? airPressure = freezed,
    Object? humidity = freezed,
    Object? postedBy = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      postedBy: postedBy == freezed
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as AppUser,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Liked>?,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get postedBy {
    return $AppUserCopyWith<$Res>(_value.postedBy, (value) {
      return _then(_value.copyWith(postedBy: value));
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pid,
      String text,
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      double longitude,
      double latitude,
      double temperature,
      @JsonKey(name: 'air_pressure')
          double airPressure,
      double humidity,
      @JsonKey(name: 'users')
          AppUser postedBy,
      @JsonKey(name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
          List<Liked>? likes});

  @override
  $AppUserCopyWith<$Res> get postedBy;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, (v) => _then(v as _$_Post));

  @override
  _$_Post get _value => super._value as _$_Post;

  @override
  $Res call({
    Object? pid = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? temperature = freezed,
    Object? airPressure = freezed,
    Object? humidity = freezed,
    Object? postedBy = freezed,
    Object? likes = freezed,
  }) {
    return _then(_$_Post(
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      postedBy: postedBy == freezed
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as AppUser,
      likes: likes == freezed
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Liked>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(
      {required this.pid,
      required this.text,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      required this.longitude,
      required this.latitude,
      required this.temperature,
      @JsonKey(name: 'air_pressure')
          required this.airPressure,
      required this.humidity,
      @JsonKey(name: 'users')
          required this.postedBy,
      @JsonKey(name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
          final List<Liked>? likes = const []})
      : _likes = likes;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final int pid;
  @override
  final String text;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final double temperature;
  @override
  @JsonKey(name: 'air_pressure')
  final double airPressure;
  @override
  final double humidity;
  @override
  @JsonKey(name: 'users')
  final AppUser postedBy;
  final List<Liked>? _likes;
  @override
  @JsonKey(
      name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
  List<Liked>? get likes {
    final value = _likes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Post(pid: $pid, text: $text, createdAt: $createdAt, longitude: $longitude, latitude: $latitude, temperature: $temperature, airPressure: $airPressure, humidity: $humidity, postedBy: $postedBy, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            const DeepCollectionEquality().equals(other.pid, pid) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality()
                .equals(other.airPressure, airPressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.postedBy, postedBy) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pid),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(airPressure),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(postedBy),
      const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final int pid,
      required final String text,
      @JsonKey(name: 'created_at')
          required final DateTime createdAt,
      required final double longitude,
      required final double latitude,
      required final double temperature,
      @JsonKey(name: 'air_pressure')
          required final double airPressure,
      required final double humidity,
      @JsonKey(name: 'users')
          required final AppUser postedBy,
      @JsonKey(name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
          final List<Liked>? likes}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get pid;
  @override
  String get text;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  double get temperature;
  @override
  @JsonKey(name: 'air_pressure')
  double get airPressure;
  @override
  double get humidity;
  @override
  @JsonKey(name: 'users')
  AppUser get postedBy;
  @override
  @JsonKey(
      name: 'liked', fromJson: Post._usersFromJson, toJson: Post._usersToJson)
  List<Liked>? get likes;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}

Liked _$LikedFromJson(Map<String, dynamic> json) {
  return _Liked.fromJson(json);
}

/// @nodoc
mixin _$Liked {
  @JsonKey(name: 'liked_by')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'liked_post')
  int get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  AppUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedCopyWith<Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedCopyWith<$Res> {
  factory $LikedCopyWith(Liked value, $Res Function(Liked) then) =
      _$LikedCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'liked_by') String userId,
      @JsonKey(name: 'liked_post') int postId,
      @JsonKey(name: 'users') AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LikedCopyWithImpl<$Res> implements $LikedCopyWith<$Res> {
  _$LikedCopyWithImpl(this._value, this._then);

  final Liked _value;
  // ignore: unused_field
  final $Res Function(Liked) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? postId = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_LikedCopyWith<$Res> implements $LikedCopyWith<$Res> {
  factory _$$_LikedCopyWith(_$_Liked value, $Res Function(_$_Liked) then) =
      __$$_LikedCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'liked_by') String userId,
      @JsonKey(name: 'liked_post') int postId,
      @JsonKey(name: 'users') AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LikedCopyWithImpl<$Res> extends _$LikedCopyWithImpl<$Res>
    implements _$$_LikedCopyWith<$Res> {
  __$$_LikedCopyWithImpl(_$_Liked _value, $Res Function(_$_Liked) _then)
      : super(_value, (v) => _then(v as _$_Liked));

  @override
  _$_Liked get _value => super._value as _$_Liked;

  @override
  $Res call({
    Object? userId = freezed,
    Object? postId = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Liked(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Liked implements _Liked {
  const _$_Liked(
      {@JsonKey(name: 'liked_by') required this.userId,
      @JsonKey(name: 'liked_post') required this.postId,
      @JsonKey(name: 'users') this.user});

  factory _$_Liked.fromJson(Map<String, dynamic> json) =>
      _$$_LikedFromJson(json);

  @override
  @JsonKey(name: 'liked_by')
  final String userId;
  @override
  @JsonKey(name: 'liked_post')
  final int postId;
  @override
  @JsonKey(name: 'users')
  final AppUser? user;

  @override
  String toString() {
    return 'Liked(userId: $userId, postId: $postId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Liked &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_LikedCopyWith<_$_Liked> get copyWith =>
      __$$_LikedCopyWithImpl<_$_Liked>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikedToJson(
      this,
    );
  }
}

abstract class _Liked implements Liked {
  const factory _Liked(
      {@JsonKey(name: 'liked_by') required final String userId,
      @JsonKey(name: 'liked_post') required final int postId,
      @JsonKey(name: 'users') final AppUser? user}) = _$_Liked;

  factory _Liked.fromJson(Map<String, dynamic> json) = _$_Liked.fromJson;

  @override
  @JsonKey(name: 'liked_by')
  String get userId;
  @override
  @JsonKey(name: 'liked_post')
  int get postId;
  @override
  @JsonKey(name: 'users')
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$_LikedCopyWith<_$_Liked> get copyWith =>
      throw _privateConstructorUsedError;
}

PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
mixin _$PostDto {
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_pressure')
  double get airPressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'posted_by')
  String get postedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDtoCopyWith<PostDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res>;
  $Res call(
      {String text,
      @JsonKey(name: 'created_at') DateTime createdAt,
      double longitude,
      double latitude,
      double temperature,
      @JsonKey(name: 'air_pressure') double airPressure,
      double humidity,
      @JsonKey(name: 'posted_by') String postedBy});
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res> implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  final PostDto _value;
  // ignore: unused_field
  final $Res Function(PostDto) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? temperature = freezed,
    Object? airPressure = freezed,
    Object? humidity = freezed,
    Object? postedBy = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      postedBy: postedBy == freezed
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$$_PostDtoCopyWith(
          _$_PostDto value, $Res Function(_$_PostDto) then) =
      __$$_PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      @JsonKey(name: 'created_at') DateTime createdAt,
      double longitude,
      double latitude,
      double temperature,
      @JsonKey(name: 'air_pressure') double airPressure,
      double humidity,
      @JsonKey(name: 'posted_by') String postedBy});
}

/// @nodoc
class __$$_PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$$_PostDtoCopyWith<$Res> {
  __$$_PostDtoCopyWithImpl(_$_PostDto _value, $Res Function(_$_PostDto) _then)
      : super(_value, (v) => _then(v as _$_PostDto));

  @override
  _$_PostDto get _value => super._value as _$_PostDto;

  @override
  $Res call({
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? temperature = freezed,
    Object? airPressure = freezed,
    Object? humidity = freezed,
    Object? postedBy = freezed,
  }) {
    return _then(_$_PostDto(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      postedBy: postedBy == freezed
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDto implements _PostDto {
  const _$_PostDto(
      {required this.text,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.longitude,
      required this.latitude,
      required this.temperature,
      @JsonKey(name: 'air_pressure') required this.airPressure,
      required this.humidity,
      @JsonKey(name: 'posted_by') required this.postedBy});

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostDtoFromJson(json);

  @override
  final String text;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final double temperature;
  @override
  @JsonKey(name: 'air_pressure')
  final double airPressure;
  @override
  final double humidity;
  @override
  @JsonKey(name: 'posted_by')
  final String postedBy;

  @override
  String toString() {
    return 'PostDto(text: $text, createdAt: $createdAt, longitude: $longitude, latitude: $latitude, temperature: $temperature, airPressure: $airPressure, humidity: $humidity, postedBy: $postedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDto &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality()
                .equals(other.airPressure, airPressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.postedBy, postedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(airPressure),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(postedBy));

  @JsonKey(ignore: true)
  @override
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      __$$_PostDtoCopyWithImpl<_$_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDtoToJson(
      this,
    );
  }
}

abstract class _PostDto implements PostDto {
  const factory _PostDto(
      {required final String text,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final double longitude,
      required final double latitude,
      required final double temperature,
      @JsonKey(name: 'air_pressure') required final double airPressure,
      required final double humidity,
      @JsonKey(name: 'posted_by') required final String postedBy}) = _$_PostDto;

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  String get text;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  double get temperature;
  @override
  @JsonKey(name: 'air_pressure')
  double get airPressure;
  @override
  double get humidity;
  @override
  @JsonKey(name: 'posted_by')
  String get postedBy;
  @override
  @JsonKey(ignore: true)
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
