// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({String uid, String username, String email});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String username, String email});
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, (v) => _then(v as _$_AppUser));

  @override
  _$_AppUser get _value => super._value as _$_AppUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_AppUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {required this.uid, required this.username, required this.email});

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String uid;
  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'AppUser(uid: $uid, username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required final String uid,
      required final String username,
      required final String email}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String get uid;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Grocery _$GroceryFromJson(Map<String, dynamic> json) {
  return _Grocery.fromJson(json);
}

/// @nodoc
mixin _$Grocery {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'groceries_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson)
  List<GroceryProduct>? get groceryProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryCopyWith<Grocery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'created_by')
          String createdBy,
      @JsonKey(name: 'groceries_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          List<GroceryProduct>? groceryProducts});
}

/// @nodoc
class _$GroceryCopyWithImpl<$Res> implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._value, this._then);

  final Grocery _value;
  // ignore: unused_field
  final $Res Function(Grocery) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdBy = freezed,
    Object? groceryProducts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      groceryProducts: groceryProducts == freezed
          ? _value.groceryProducts
          : groceryProducts // ignore: cast_nullable_to_non_nullable
              as List<GroceryProduct>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GroceryCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$$_GroceryCopyWith(
          _$_Grocery value, $Res Function(_$_Grocery) then) =
      __$$_GroceryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'created_by')
          String createdBy,
      @JsonKey(name: 'groceries_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          List<GroceryProduct>? groceryProducts});
}

/// @nodoc
class __$$_GroceryCopyWithImpl<$Res> extends _$GroceryCopyWithImpl<$Res>
    implements _$$_GroceryCopyWith<$Res> {
  __$$_GroceryCopyWithImpl(_$_Grocery _value, $Res Function(_$_Grocery) _then)
      : super(_value, (v) => _then(v as _$_Grocery));

  @override
  _$_Grocery get _value => super._value as _$_Grocery;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdBy = freezed,
    Object? groceryProducts = freezed,
  }) {
    return _then(_$_Grocery(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      groceryProducts: groceryProducts == freezed
          ? _value._groceryProducts
          : groceryProducts // ignore: cast_nullable_to_non_nullable
              as List<GroceryProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Grocery extends _Grocery {
  const _$_Grocery(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_by')
          required this.createdBy,
      @JsonKey(name: 'groceries_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          final List<GroceryProduct>? groceryProducts = const []})
      : _groceryProducts = groceryProducts,
        super._();

  factory _$_Grocery.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;
  final List<GroceryProduct>? _groceryProducts;
  @override
  @JsonKey(
      name: 'groceries_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson)
  List<GroceryProduct>? get groceryProducts {
    final value = _groceryProducts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Grocery(id: $id, name: $name, createdBy: $createdBy, groceryProducts: $groceryProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Grocery &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality()
                .equals(other._groceryProducts, _groceryProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(_groceryProducts));

  @JsonKey(ignore: true)
  @override
  _$$_GroceryCopyWith<_$_Grocery> get copyWith =>
      __$$_GroceryCopyWithImpl<_$_Grocery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryToJson(
      this,
    );
  }
}

abstract class _Grocery extends Grocery {
  const factory _Grocery(
      {required final String id,
      required final String name,
      @JsonKey(name: 'created_by')
          required final String createdBy,
      @JsonKey(name: 'groceries_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          final List<GroceryProduct>? groceryProducts}) = _$_Grocery;
  const _Grocery._() : super._();

  factory _Grocery.fromJson(Map<String, dynamic> json) = _$_Grocery.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy;
  @override
  @JsonKey(
      name: 'groceries_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson)
  List<GroceryProduct>? get groceryProducts;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryCopyWith<_$_Grocery> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryDto _$GroceryDtoFromJson(Map<String, dynamic> json) {
  return _GroceryDto.fromJson(json);
}

/// @nodoc
mixin _$GroceryDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryDtoCopyWith<GroceryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryDtoCopyWith<$Res> {
  factory $GroceryDtoCopyWith(
          GroceryDto value, $Res Function(GroceryDto) then) =
      _$GroceryDtoCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class _$GroceryDtoCopyWithImpl<$Res> implements $GroceryDtoCopyWith<$Res> {
  _$GroceryDtoCopyWithImpl(this._value, this._then);

  final GroceryDto _value;
  // ignore: unused_field
  final $Res Function(GroceryDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GroceryDtoCopyWith<$Res>
    implements $GroceryDtoCopyWith<$Res> {
  factory _$$_GroceryDtoCopyWith(
          _$_GroceryDto value, $Res Function(_$_GroceryDto) then) =
      __$$_GroceryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class __$$_GroceryDtoCopyWithImpl<$Res> extends _$GroceryDtoCopyWithImpl<$Res>
    implements _$$_GroceryDtoCopyWith<$Res> {
  __$$_GroceryDtoCopyWithImpl(
      _$_GroceryDto _value, $Res Function(_$_GroceryDto) _then)
      : super(_value, (v) => _then(v as _$_GroceryDto));

  @override
  _$_GroceryDto get _value => super._value as _$_GroceryDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_GroceryDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroceryDto implements _GroceryDto {
  const _$_GroceryDto(
      {required this.name,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$_GroceryDto.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryDtoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  @override
  String toString() {
    return 'GroceryDto(name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdBy));

  @JsonKey(ignore: true)
  @override
  _$$_GroceryDtoCopyWith<_$_GroceryDto> get copyWith =>
      __$$_GroceryDtoCopyWithImpl<_$_GroceryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryDtoToJson(
      this,
    );
  }
}

abstract class _GroceryDto implements GroceryDto {
  const factory _GroceryDto(
          {required final String name,
          @JsonKey(name: 'created_by') required final String createdBy}) =
      _$_GroceryDto;

  factory _GroceryDto.fromJson(Map<String, dynamic> json) =
      _$_GroceryDto.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryDtoCopyWith<_$_GroceryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdBy));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {required final String id,
          required final String name,
          @JsonKey(name: 'created_by') required final String createdBy}) =
      _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  final ProductDto _value;
  // ignore: unused_field
  final $Res Function(ProductDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductDtoCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$_ProductDtoCopyWith(
          _$_ProductDto value, $Res Function(_$_ProductDto) then) =
      __$$_ProductDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class __$$_ProductDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$$_ProductDtoCopyWith<$Res> {
  __$$_ProductDtoCopyWithImpl(
      _$_ProductDto _value, $Res Function(_$_ProductDto) _then)
      : super(_value, (v) => _then(v as _$_ProductDto));

  @override
  _$_ProductDto get _value => super._value as _$_ProductDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_ProductDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDto implements _ProductDto {
  const _$_ProductDto(
      {required this.name,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDtoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  @override
  String toString() {
    return 'ProductDto(name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdBy));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      __$$_ProductDtoCopyWithImpl<_$_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDtoToJson(
      this,
    );
  }
}

abstract class _ProductDto implements ProductDto {
  const factory _ProductDto(
          {required final String name,
          @JsonKey(name: 'created_by') required final String createdBy}) =
      _$_ProductDto;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryProduct _$GroceryProductFromJson(Map<String, dynamic> json) {
  return _GroceryProduct.fromJson(json);
}

/// @nodoc
mixin _$GroceryProduct {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'grocery_id')
  String get groceryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  Product? get product => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryProductCopyWith<GroceryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryProductCopyWith<$Res> {
  factory $GroceryProductCopyWith(
          GroceryProduct value, $Res Function(GroceryProduct) then) =
      _$GroceryProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      @JsonKey(name: 'products') Product? product,
      String? unit});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$GroceryProductCopyWithImpl<$Res>
    implements $GroceryProductCopyWith<$Res> {
  _$GroceryProductCopyWithImpl(this._value, this._then);

  final GroceryProduct _value;
  // ignore: unused_field
  final $Res Function(GroceryProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groceryId: groceryId == freezed
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_GroceryProductCopyWith<$Res>
    implements $GroceryProductCopyWith<$Res> {
  factory _$$_GroceryProductCopyWith(
          _$_GroceryProduct value, $Res Function(_$_GroceryProduct) then) =
      __$$_GroceryProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      @JsonKey(name: 'products') Product? product,
      String? unit});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_GroceryProductCopyWithImpl<$Res>
    extends _$GroceryProductCopyWithImpl<$Res>
    implements _$$_GroceryProductCopyWith<$Res> {
  __$$_GroceryProductCopyWithImpl(
      _$_GroceryProduct _value, $Res Function(_$_GroceryProduct) _then)
      : super(_value, (v) => _then(v as _$_GroceryProduct));

  @override
  _$_GroceryProduct get _value => super._value as _$_GroceryProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_GroceryProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groceryId: groceryId == freezed
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroceryProduct implements _GroceryProduct {
  const _$_GroceryProduct(
      {required this.id,
      @JsonKey(name: 'grocery_id') required this.groceryId,
      @JsonKey(name: 'product_id') required this.productId,
      required this.quantity,
      @JsonKey(name: 'products') this.product,
      this.unit = ''});

  factory _$_GroceryProduct.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryProductFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'grocery_id')
  final String groceryId;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'products')
  final Product? product;
  @override
  @JsonKey()
  final String? unit;

  @override
  String toString() {
    return 'GroceryProduct(id: $id, groceryId: $groceryId, productId: $productId, quantity: $quantity, product: $product, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.groceryId, groceryId) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(groceryId),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_GroceryProductCopyWith<_$_GroceryProduct> get copyWith =>
      __$$_GroceryProductCopyWithImpl<_$_GroceryProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryProductToJson(
      this,
    );
  }
}

abstract class _GroceryProduct implements GroceryProduct {
  const factory _GroceryProduct(
      {required final String id,
      @JsonKey(name: 'grocery_id') required final String groceryId,
      @JsonKey(name: 'product_id') required final String productId,
      required final int quantity,
      @JsonKey(name: 'products') final Product? product,
      final String? unit}) = _$_GroceryProduct;

  factory _GroceryProduct.fromJson(Map<String, dynamic> json) =
      _$_GroceryProduct.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'grocery_id')
  String get groceryId;
  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'products')
  Product? get product;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryProductCopyWith<_$_GroceryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryProductDto _$GroceryProductDtoFromJson(Map<String, dynamic> json) {
  return _GroceryProductDto.fromJson(json);
}

/// @nodoc
mixin _$GroceryProductDto {
  @JsonKey(name: 'grocery_id')
  String get groceryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryProductDtoCopyWith<GroceryProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryProductDtoCopyWith<$Res> {
  factory $GroceryProductDtoCopyWith(
          GroceryProductDto value, $Res Function(GroceryProductDto) then) =
      _$GroceryProductDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      String? unit});
}

/// @nodoc
class _$GroceryProductDtoCopyWithImpl<$Res>
    implements $GroceryProductDtoCopyWith<$Res> {
  _$GroceryProductDtoCopyWithImpl(this._value, this._then);

  final GroceryProductDto _value;
  // ignore: unused_field
  final $Res Function(GroceryProductDto) _then;

  @override
  $Res call({
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      groceryId: groceryId == freezed
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GroceryProductDtoCopyWith<$Res>
    implements $GroceryProductDtoCopyWith<$Res> {
  factory _$$_GroceryProductDtoCopyWith(_$_GroceryProductDto value,
          $Res Function(_$_GroceryProductDto) then) =
      __$$_GroceryProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      String? unit});
}

/// @nodoc
class __$$_GroceryProductDtoCopyWithImpl<$Res>
    extends _$GroceryProductDtoCopyWithImpl<$Res>
    implements _$$_GroceryProductDtoCopyWith<$Res> {
  __$$_GroceryProductDtoCopyWithImpl(
      _$_GroceryProductDto _value, $Res Function(_$_GroceryProductDto) _then)
      : super(_value, (v) => _then(v as _$_GroceryProductDto));

  @override
  _$_GroceryProductDto get _value => super._value as _$_GroceryProductDto;

  @override
  $Res call({
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_GroceryProductDto(
      groceryId: groceryId == freezed
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroceryProductDto implements _GroceryProductDto {
  const _$_GroceryProductDto(
      {@JsonKey(name: 'grocery_id') required this.groceryId,
      @JsonKey(name: 'product_id') required this.productId,
      this.quantity = 1,
      this.unit});

  factory _$_GroceryProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryProductDtoFromJson(json);

  @override
  @JsonKey(name: 'grocery_id')
  final String groceryId;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey()
  final int quantity;
  @override
  final String? unit;

  @override
  String toString() {
    return 'GroceryProductDto(groceryId: $groceryId, productId: $productId, quantity: $quantity, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryProductDto &&
            const DeepCollectionEquality().equals(other.groceryId, groceryId) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groceryId),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_GroceryProductDtoCopyWith<_$_GroceryProductDto> get copyWith =>
      __$$_GroceryProductDtoCopyWithImpl<_$_GroceryProductDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryProductDtoToJson(
      this,
    );
  }
}

abstract class _GroceryProductDto implements GroceryProductDto {
  const factory _GroceryProductDto(
      {@JsonKey(name: 'grocery_id') required final String groceryId,
      @JsonKey(name: 'product_id') required final String productId,
      final int quantity,
      final String? unit}) = _$_GroceryProductDto;

  factory _GroceryProductDto.fromJson(Map<String, dynamic> json) =
      _$_GroceryProductDto.fromJson;

  @override
  @JsonKey(name: 'grocery_id')
  String get groceryId;
  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  int get quantity;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryProductDtoCopyWith<_$_GroceryProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
mixin _$AuthDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
  $Res call({String email, String password, String? name});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$$_AuthDtoCopyWith(
          _$_AuthDto value, $Res Function(_$_AuthDto) then) =
      __$$_AuthDtoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String? name});
}

/// @nodoc
class __$$_AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$$_AuthDtoCopyWith<$Res> {
  __$$_AuthDtoCopyWithImpl(_$_AuthDto _value, $Res Function(_$_AuthDto) _then)
      : super(_value, (v) => _then(v as _$_AuthDto));

  @override
  _$_AuthDto get _value => super._value as _$_AuthDto;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_AuthDto(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  const _$_AuthDto({required this.email, required this.password, this.name});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;

  @override
  String toString() {
    return 'AuthDto(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDto &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      __$$_AuthDtoCopyWithImpl<_$_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDtoToJson(
      this,
    );
  }
}

abstract class _AuthDto implements AuthDto {
  const factory _AuthDto(
      {required final String email,
      required final String password,
      final String? name}) = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}
