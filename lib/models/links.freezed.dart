// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoLinks _$PhotoLinksFromJson(Map<String, dynamic> json) {
  return _PhotoLinks.fromJson(json);
}

/// @nodoc
class _$PhotoLinksTearOff {
  const _$PhotoLinksTearOff();

  _PhotoLinks call(
      {required String self,
      required String html,
      required String download,
      required String download_location}) {
    return _PhotoLinks(
      self: self,
      html: html,
      download: download,
      download_location: download_location,
    );
  }

  PhotoLinks fromJson(Map<String, Object> json) {
    return PhotoLinks.fromJson(json);
  }
}

/// @nodoc
const $PhotoLinks = _$PhotoLinksTearOff();

/// @nodoc
mixin _$PhotoLinks {
  String get self => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get download => throw _privateConstructorUsedError;
  String get download_location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoLinksCopyWith<PhotoLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoLinksCopyWith<$Res> {
  factory $PhotoLinksCopyWith(
          PhotoLinks value, $Res Function(PhotoLinks) then) =
      _$PhotoLinksCopyWithImpl<$Res>;
  $Res call(
      {String self, String html, String download, String download_location});
}

/// @nodoc
class _$PhotoLinksCopyWithImpl<$Res> implements $PhotoLinksCopyWith<$Res> {
  _$PhotoLinksCopyWithImpl(this._value, this._then);

  final PhotoLinks _value;
  // ignore: unused_field
  final $Res Function(PhotoLinks) _then;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? download_location = freezed,
  }) {
    return _then(_value.copyWith(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      download: download == freezed
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String,
      download_location: download_location == freezed
          ? _value.download_location
          : download_location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PhotoLinksCopyWith<$Res> implements $PhotoLinksCopyWith<$Res> {
  factory _$PhotoLinksCopyWith(
          _PhotoLinks value, $Res Function(_PhotoLinks) then) =
      __$PhotoLinksCopyWithImpl<$Res>;
  @override
  $Res call(
      {String self, String html, String download, String download_location});
}

/// @nodoc
class __$PhotoLinksCopyWithImpl<$Res> extends _$PhotoLinksCopyWithImpl<$Res>
    implements _$PhotoLinksCopyWith<$Res> {
  __$PhotoLinksCopyWithImpl(
      _PhotoLinks _value, $Res Function(_PhotoLinks) _then)
      : super(_value, (v) => _then(v as _PhotoLinks));

  @override
  _PhotoLinks get _value => super._value as _PhotoLinks;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? download_location = freezed,
  }) {
    return _then(_PhotoLinks(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      download: download == freezed
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String,
      download_location: download_location == freezed
          ? _value.download_location
          : download_location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PhotoLinks implements _PhotoLinks {
  _$_PhotoLinks(
      {required this.self,
      required this.html,
      required this.download,
      required this.download_location});

  factory _$_PhotoLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoLinksFromJson(json);

  @override
  final String self;
  @override
  final String html;
  @override
  final String download;
  @override
  final String download_location;

  @override
  String toString() {
    return 'PhotoLinks(self: $self, html: $html, download: $download, download_location: $download_location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoLinks &&
            (identical(other.self, self) ||
                const DeepCollectionEquality().equals(other.self, self)) &&
            (identical(other.html, html) ||
                const DeepCollectionEquality().equals(other.html, html)) &&
            (identical(other.download, download) ||
                const DeepCollectionEquality()
                    .equals(other.download, download)) &&
            (identical(other.download_location, download_location) ||
                const DeepCollectionEquality()
                    .equals(other.download_location, download_location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(self) ^
      const DeepCollectionEquality().hash(html) ^
      const DeepCollectionEquality().hash(download) ^
      const DeepCollectionEquality().hash(download_location);

  @JsonKey(ignore: true)
  @override
  _$PhotoLinksCopyWith<_PhotoLinks> get copyWith =>
      __$PhotoLinksCopyWithImpl<_PhotoLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoLinksToJson(this);
  }
}

abstract class _PhotoLinks implements PhotoLinks {
  factory _PhotoLinks(
      {required String self,
      required String html,
      required String download,
      required String download_location}) = _$_PhotoLinks;

  factory _PhotoLinks.fromJson(Map<String, dynamic> json) =
      _$_PhotoLinks.fromJson;

  @override
  String get self => throw _privateConstructorUsedError;
  @override
  String get html => throw _privateConstructorUsedError;
  @override
  String get download => throw _privateConstructorUsedError;
  @override
  String get download_location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoLinksCopyWith<_PhotoLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLinks _$UserLinksFromJson(Map<String, dynamic> json) {
  return _UserLinks.fromJson(json);
}

/// @nodoc
class _$UserLinksTearOff {
  const _$UserLinksTearOff();

  _UserLinks call(
      {required String self,
      required String html,
      required String photos,
      required String likes,
      required String portfolio,
      required String following,
      required String followers}) {
    return _UserLinks(
      self: self,
      html: html,
      photos: photos,
      likes: likes,
      portfolio: portfolio,
      following: following,
      followers: followers,
    );
  }

  UserLinks fromJson(Map<String, Object> json) {
    return UserLinks.fromJson(json);
  }
}

/// @nodoc
const $UserLinks = _$UserLinksTearOff();

/// @nodoc
mixin _$UserLinks {
  String get self => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get photos => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get portfolio => throw _privateConstructorUsedError;
  String get following => throw _privateConstructorUsedError;
  String get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLinksCopyWith<UserLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLinksCopyWith<$Res> {
  factory $UserLinksCopyWith(UserLinks value, $Res Function(UserLinks) then) =
      _$UserLinksCopyWithImpl<$Res>;
  $Res call(
      {String self,
      String html,
      String photos,
      String likes,
      String portfolio,
      String following,
      String followers});
}

/// @nodoc
class _$UserLinksCopyWithImpl<$Res> implements $UserLinksCopyWith<$Res> {
  _$UserLinksCopyWithImpl(this._value, this._then);

  final UserLinks _value;
  // ignore: unused_field
  final $Res Function(UserLinks) _then;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
    Object? following = freezed,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      portfolio: portfolio == freezed
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserLinksCopyWith<$Res> implements $UserLinksCopyWith<$Res> {
  factory _$UserLinksCopyWith(
          _UserLinks value, $Res Function(_UserLinks) then) =
      __$UserLinksCopyWithImpl<$Res>;
  @override
  $Res call(
      {String self,
      String html,
      String photos,
      String likes,
      String portfolio,
      String following,
      String followers});
}

/// @nodoc
class __$UserLinksCopyWithImpl<$Res> extends _$UserLinksCopyWithImpl<$Res>
    implements _$UserLinksCopyWith<$Res> {
  __$UserLinksCopyWithImpl(_UserLinks _value, $Res Function(_UserLinks) _then)
      : super(_value, (v) => _then(v as _UserLinks));

  @override
  _UserLinks get _value => super._value as _UserLinks;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
    Object? following = freezed,
    Object? followers = freezed,
  }) {
    return _then(_UserLinks(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      portfolio: portfolio == freezed
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserLinks implements _UserLinks {
  _$_UserLinks(
      {required this.self,
      required this.html,
      required this.photos,
      required this.likes,
      required this.portfolio,
      required this.following,
      required this.followers});

  factory _$_UserLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLinksFromJson(json);

  @override
  final String self;
  @override
  final String html;
  @override
  final String photos;
  @override
  final String likes;
  @override
  final String portfolio;
  @override
  final String following;
  @override
  final String followers;

  @override
  String toString() {
    return 'UserLinks(self: $self, html: $html, photos: $photos, likes: $likes, portfolio: $portfolio, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLinks &&
            (identical(other.self, self) ||
                const DeepCollectionEquality().equals(other.self, self)) &&
            (identical(other.html, html) ||
                const DeepCollectionEquality().equals(other.html, html)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.portfolio, portfolio) ||
                const DeepCollectionEquality()
                    .equals(other.portfolio, portfolio)) &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(self) ^
      const DeepCollectionEquality().hash(html) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(portfolio) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers);

  @JsonKey(ignore: true)
  @override
  _$UserLinksCopyWith<_UserLinks> get copyWith =>
      __$UserLinksCopyWithImpl<_UserLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLinksToJson(this);
  }
}

abstract class _UserLinks implements UserLinks {
  factory _UserLinks(
      {required String self,
      required String html,
      required String photos,
      required String likes,
      required String portfolio,
      required String following,
      required String followers}) = _$_UserLinks;

  factory _UserLinks.fromJson(Map<String, dynamic> json) =
      _$_UserLinks.fromJson;

  @override
  String get self => throw _privateConstructorUsedError;
  @override
  String get html => throw _privateConstructorUsedError;
  @override
  String get photos => throw _privateConstructorUsedError;
  @override
  String get likes => throw _privateConstructorUsedError;
  @override
  String get portfolio => throw _privateConstructorUsedError;
  @override
  String get following => throw _privateConstructorUsedError;
  @override
  String get followers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLinksCopyWith<_UserLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
