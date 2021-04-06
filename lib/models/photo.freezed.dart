// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call(
      {required String id,
      required DateTime created_at,
      required DateTime updated_at,
      required int width,
      required int height,
      required String color,
      required String blur_hash,
      required dynamic description,
      required Urls urls,
      required PhotoLinks links,
      required List<dynamic> categories,
      required int likes,
      required bool liked_by_user,
      required User user}) {
    return _Photo(
      id: id,
      created_at: created_at,
      updated_at: updated_at,
      width: width,
      height: height,
      color: color,
      blur_hash: blur_hash,
      description: description,
      urls: urls,
      links: links,
      categories: categories,
      likes: likes,
      liked_by_user: liked_by_user,
      user: user,
    );
  }

  Photo fromJson(Map<String, Object> json) {
    return Photo.fromJson(json);
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  String get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get blur_hash => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;
  PhotoLinks get links => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  bool get liked_by_user => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime created_at,
      DateTime updated_at,
      int width,
      int height,
      String color,
      String blur_hash,
      dynamic description,
      Urls urls,
      PhotoLinks links,
      List<dynamic> categories,
      int likes,
      bool liked_by_user,
      User user});

  $UrlsCopyWith<$Res> get urls;
  $PhotoLinksCopyWith<$Res> get links;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blur_hash = freezed,
    Object? description = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? categories = freezed,
    Object? likes = freezed,
    Object? liked_by_user = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blur_hash: blur_hash == freezed
          ? _value.blur_hash
          : blur_hash // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PhotoLinks,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      liked_by_user: liked_by_user == freezed
          ? _value.liked_by_user
          : liked_by_user // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value));
    });
  }

  @override
  $PhotoLinksCopyWith<$Res> get links {
    return $PhotoLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime created_at,
      DateTime updated_at,
      int width,
      int height,
      String color,
      String blur_hash,
      dynamic description,
      Urls urls,
      PhotoLinks links,
      List<dynamic> categories,
      int likes,
      bool liked_by_user,
      User user});

  @override
  $UrlsCopyWith<$Res> get urls;
  @override
  $PhotoLinksCopyWith<$Res> get links;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blur_hash = freezed,
    Object? description = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? categories = freezed,
    Object? likes = freezed,
    Object? liked_by_user = freezed,
    Object? user = freezed,
  }) {
    return _then(_Photo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blur_hash: blur_hash == freezed
          ? _value.blur_hash
          : blur_hash // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as PhotoLinks,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      liked_by_user: liked_by_user == freezed
          ? _value.liked_by_user
          : liked_by_user // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Photo implements _Photo {
  _$_Photo(
      {required this.id,
      required this.created_at,
      required this.updated_at,
      required this.width,
      required this.height,
      required this.color,
      required this.blur_hash,
      required this.description,
      required this.urls,
      required this.links,
      required this.categories,
      required this.likes,
      required this.liked_by_user,
      required this.user});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoFromJson(json);

  @override
  final String id;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final int width;
  @override
  final int height;
  @override
  final String color;
  @override
  final String blur_hash;
  @override
  final dynamic description;
  @override
  final Urls urls;
  @override
  final PhotoLinks links;
  @override
  final List<dynamic> categories;
  @override
  final int likes;
  @override
  final bool liked_by_user;
  @override
  final User user;

  @override
  String toString() {
    return 'Photo(id: $id, created_at: $created_at, updated_at: $updated_at, width: $width, height: $height, color: $color, blur_hash: $blur_hash, description: $description, urls: $urls, links: $links, categories: $categories, likes: $likes, liked_by_user: $liked_by_user, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.blur_hash, blur_hash) ||
                const DeepCollectionEquality()
                    .equals(other.blur_hash, blur_hash)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.urls, urls) ||
                const DeepCollectionEquality().equals(other.urls, urls)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.liked_by_user, liked_by_user) ||
                const DeepCollectionEquality()
                    .equals(other.liked_by_user, liked_by_user)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(blur_hash) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(urls) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(liked_by_user) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {required String id,
      required DateTime created_at,
      required DateTime updated_at,
      required int width,
      required int height,
      required String color,
      required String blur_hash,
      required dynamic description,
      required Urls urls,
      required PhotoLinks links,
      required List<dynamic> categories,
      required int likes,
      required bool liked_by_user,
      required User user}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get created_at => throw _privateConstructorUsedError;
  @override
  DateTime get updated_at => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  String get blur_hash => throw _privateConstructorUsedError;
  @override
  dynamic get description => throw _privateConstructorUsedError;
  @override
  Urls get urls => throw _privateConstructorUsedError;
  @override
  PhotoLinks get links => throw _privateConstructorUsedError;
  @override
  List<dynamic> get categories => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  bool get liked_by_user => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}
