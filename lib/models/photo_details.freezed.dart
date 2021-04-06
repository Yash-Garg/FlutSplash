// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photo_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoDetails _$PhotoDetailsFromJson(Map<String, dynamic> json) {
  return _PhotoDetails.fromJson(json);
}

/// @nodoc
class _$PhotoDetailsTearOff {
  const _$PhotoDetailsTearOff();

  _PhotoDetails call(
      {required String id,
      required DateTime created_at,
      required DateTime updated_at,
      required int width,
      required int height,
      required String color,
      required String blur_hash,
      required Urls urls,
      required Links links,
      required Exif exif,
      required User user,
      required int views,
      required int downloads}) {
    return _PhotoDetails(
      id: id,
      created_at: created_at,
      updated_at: updated_at,
      width: width,
      height: height,
      color: color,
      blur_hash: blur_hash,
      urls: urls,
      links: links,
      exif: exif,
      user: user,
      views: views,
      downloads: downloads,
    );
  }

  PhotoDetails fromJson(Map<String, Object> json) {
    return PhotoDetails.fromJson(json);
  }
}

/// @nodoc
const $PhotoDetails = _$PhotoDetailsTearOff();

/// @nodoc
mixin _$PhotoDetails {
  String get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get blur_hash => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  Exif get exif => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  int get downloads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDetailsCopyWith<PhotoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDetailsCopyWith<$Res> {
  factory $PhotoDetailsCopyWith(
          PhotoDetails value, $Res Function(PhotoDetails) then) =
      _$PhotoDetailsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime created_at,
      DateTime updated_at,
      int width,
      int height,
      String color,
      String blur_hash,
      Urls urls,
      Links links,
      Exif exif,
      User user,
      int views,
      int downloads});

  $UrlsCopyWith<$Res> get urls;
  $LinksCopyWith<$Res> get links;
  $ExifCopyWith<$Res> get exif;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PhotoDetailsCopyWithImpl<$Res> implements $PhotoDetailsCopyWith<$Res> {
  _$PhotoDetailsCopyWithImpl(this._value, this._then);

  final PhotoDetails _value;
  // ignore: unused_field
  final $Res Function(PhotoDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blur_hash = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? exif = freezed,
    Object? user = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
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
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      exif: exif == freezed
          ? _value.exif
          : exif // ignore: cast_nullable_to_non_nullable
              as Exif,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value));
    });
  }

  @override
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $ExifCopyWith<$Res> get exif {
    return $ExifCopyWith<$Res>(_value.exif, (value) {
      return _then(_value.copyWith(exif: value));
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
abstract class _$PhotoDetailsCopyWith<$Res>
    implements $PhotoDetailsCopyWith<$Res> {
  factory _$PhotoDetailsCopyWith(
          _PhotoDetails value, $Res Function(_PhotoDetails) then) =
      __$PhotoDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime created_at,
      DateTime updated_at,
      int width,
      int height,
      String color,
      String blur_hash,
      Urls urls,
      Links links,
      Exif exif,
      User user,
      int views,
      int downloads});

  @override
  $UrlsCopyWith<$Res> get urls;
  @override
  $LinksCopyWith<$Res> get links;
  @override
  $ExifCopyWith<$Res> get exif;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$PhotoDetailsCopyWithImpl<$Res> extends _$PhotoDetailsCopyWithImpl<$Res>
    implements _$PhotoDetailsCopyWith<$Res> {
  __$PhotoDetailsCopyWithImpl(
      _PhotoDetails _value, $Res Function(_PhotoDetails) _then)
      : super(_value, (v) => _then(v as _PhotoDetails));

  @override
  _PhotoDetails get _value => super._value as _PhotoDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blur_hash = freezed,
    Object? urls = freezed,
    Object? links = freezed,
    Object? exif = freezed,
    Object? user = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
  }) {
    return _then(_PhotoDetails(
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
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      exif: exif == freezed
          ? _value.exif
          : exif // ignore: cast_nullable_to_non_nullable
              as Exif,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PhotoDetails implements _PhotoDetails {
  _$_PhotoDetails(
      {required this.id,
      required this.created_at,
      required this.updated_at,
      required this.width,
      required this.height,
      required this.color,
      required this.blur_hash,
      required this.urls,
      required this.links,
      required this.exif,
      required this.user,
      required this.views,
      required this.downloads});

  factory _$_PhotoDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoDetailsFromJson(json);

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
  final Urls urls;
  @override
  final Links links;
  @override
  final Exif exif;
  @override
  final User user;
  @override
  final int views;
  @override
  final int downloads;

  @override
  String toString() {
    return 'PhotoDetails(id: $id, created_at: $created_at, updated_at: $updated_at, width: $width, height: $height, color: $color, blur_hash: $blur_hash, urls: $urls, links: $links, exif: $exif, user: $user, views: $views, downloads: $downloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoDetails &&
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
            (identical(other.urls, urls) ||
                const DeepCollectionEquality().equals(other.urls, urls)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.exif, exif) ||
                const DeepCollectionEquality().equals(other.exif, exif)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.downloads, downloads) ||
                const DeepCollectionEquality()
                    .equals(other.downloads, downloads)));
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
      const DeepCollectionEquality().hash(urls) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(exif) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(downloads);

  @JsonKey(ignore: true)
  @override
  _$PhotoDetailsCopyWith<_PhotoDetails> get copyWith =>
      __$PhotoDetailsCopyWithImpl<_PhotoDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoDetailsToJson(this);
  }
}

abstract class _PhotoDetails implements PhotoDetails {
  factory _PhotoDetails(
      {required String id,
      required DateTime created_at,
      required DateTime updated_at,
      required int width,
      required int height,
      required String color,
      required String blur_hash,
      required Urls urls,
      required Links links,
      required Exif exif,
      required User user,
      required int views,
      required int downloads}) = _$_PhotoDetails;

  factory _PhotoDetails.fromJson(Map<String, dynamic> json) =
      _$_PhotoDetails.fromJson;

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
  Urls get urls => throw _privateConstructorUsedError;
  @override
  Links get links => throw _privateConstructorUsedError;
  @override
  Exif get exif => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  int get views => throw _privateConstructorUsedError;
  @override
  int get downloads => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoDetailsCopyWith<_PhotoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Exif _$ExifFromJson(Map<String, dynamic> json) {
  return _Exif.fromJson(json);
}

/// @nodoc
class _$ExifTearOff {
  const _$ExifTearOff();

  _Exif call(
      {required String make,
      required String model,
      required String exposure_time,
      required String aperture,
      required String focal_length,
      required int iso}) {
    return _Exif(
      make: make,
      model: model,
      exposure_time: exposure_time,
      aperture: aperture,
      focal_length: focal_length,
      iso: iso,
    );
  }

  Exif fromJson(Map<String, Object> json) {
    return Exif.fromJson(json);
  }
}

/// @nodoc
const $Exif = _$ExifTearOff();

/// @nodoc
mixin _$Exif {
  String get make => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get exposure_time => throw _privateConstructorUsedError;
  String get aperture => throw _privateConstructorUsedError;
  String get focal_length => throw _privateConstructorUsedError;
  int get iso => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExifCopyWith<Exif> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExifCopyWith<$Res> {
  factory $ExifCopyWith(Exif value, $Res Function(Exif) then) =
      _$ExifCopyWithImpl<$Res>;
  $Res call(
      {String make,
      String model,
      String exposure_time,
      String aperture,
      String focal_length,
      int iso});
}

/// @nodoc
class _$ExifCopyWithImpl<$Res> implements $ExifCopyWith<$Res> {
  _$ExifCopyWithImpl(this._value, this._then);

  final Exif _value;
  // ignore: unused_field
  final $Res Function(Exif) _then;

  @override
  $Res call({
    Object? make = freezed,
    Object? model = freezed,
    Object? exposure_time = freezed,
    Object? aperture = freezed,
    Object? focal_length = freezed,
    Object? iso = freezed,
  }) {
    return _then(_value.copyWith(
      make: make == freezed
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      exposure_time: exposure_time == freezed
          ? _value.exposure_time
          : exposure_time // ignore: cast_nullable_to_non_nullable
              as String,
      aperture: aperture == freezed
          ? _value.aperture
          : aperture // ignore: cast_nullable_to_non_nullable
              as String,
      focal_length: focal_length == freezed
          ? _value.focal_length
          : focal_length // ignore: cast_nullable_to_non_nullable
              as String,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ExifCopyWith<$Res> implements $ExifCopyWith<$Res> {
  factory _$ExifCopyWith(_Exif value, $Res Function(_Exif) then) =
      __$ExifCopyWithImpl<$Res>;
  @override
  $Res call(
      {String make,
      String model,
      String exposure_time,
      String aperture,
      String focal_length,
      int iso});
}

/// @nodoc
class __$ExifCopyWithImpl<$Res> extends _$ExifCopyWithImpl<$Res>
    implements _$ExifCopyWith<$Res> {
  __$ExifCopyWithImpl(_Exif _value, $Res Function(_Exif) _then)
      : super(_value, (v) => _then(v as _Exif));

  @override
  _Exif get _value => super._value as _Exif;

  @override
  $Res call({
    Object? make = freezed,
    Object? model = freezed,
    Object? exposure_time = freezed,
    Object? aperture = freezed,
    Object? focal_length = freezed,
    Object? iso = freezed,
  }) {
    return _then(_Exif(
      make: make == freezed
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      exposure_time: exposure_time == freezed
          ? _value.exposure_time
          : exposure_time // ignore: cast_nullable_to_non_nullable
              as String,
      aperture: aperture == freezed
          ? _value.aperture
          : aperture // ignore: cast_nullable_to_non_nullable
              as String,
      focal_length: focal_length == freezed
          ? _value.focal_length
          : focal_length // ignore: cast_nullable_to_non_nullable
              as String,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Exif implements _Exif {
  _$_Exif(
      {required this.make,
      required this.model,
      required this.exposure_time,
      required this.aperture,
      required this.focal_length,
      required this.iso});

  factory _$_Exif.fromJson(Map<String, dynamic> json) =>
      _$_$_ExifFromJson(json);

  @override
  final String make;
  @override
  final String model;
  @override
  final String exposure_time;
  @override
  final String aperture;
  @override
  final String focal_length;
  @override
  final int iso;

  @override
  String toString() {
    return 'Exif(make: $make, model: $model, exposure_time: $exposure_time, aperture: $aperture, focal_length: $focal_length, iso: $iso)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exif &&
            (identical(other.make, make) ||
                const DeepCollectionEquality().equals(other.make, make)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.exposure_time, exposure_time) ||
                const DeepCollectionEquality()
                    .equals(other.exposure_time, exposure_time)) &&
            (identical(other.aperture, aperture) ||
                const DeepCollectionEquality()
                    .equals(other.aperture, aperture)) &&
            (identical(other.focal_length, focal_length) ||
                const DeepCollectionEquality()
                    .equals(other.focal_length, focal_length)) &&
            (identical(other.iso, iso) ||
                const DeepCollectionEquality().equals(other.iso, iso)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(make) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(exposure_time) ^
      const DeepCollectionEquality().hash(aperture) ^
      const DeepCollectionEquality().hash(focal_length) ^
      const DeepCollectionEquality().hash(iso);

  @JsonKey(ignore: true)
  @override
  _$ExifCopyWith<_Exif> get copyWith =>
      __$ExifCopyWithImpl<_Exif>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExifToJson(this);
  }
}

abstract class _Exif implements Exif {
  factory _Exif(
      {required String make,
      required String model,
      required String exposure_time,
      required String aperture,
      required String focal_length,
      required int iso}) = _$_Exif;

  factory _Exif.fromJson(Map<String, dynamic> json) = _$_Exif.fromJson;

  @override
  String get make => throw _privateConstructorUsedError;
  @override
  String get model => throw _privateConstructorUsedError;
  @override
  String get exposure_time => throw _privateConstructorUsedError;
  @override
  String get aperture => throw _privateConstructorUsedError;
  @override
  String get focal_length => throw _privateConstructorUsedError;
  @override
  int get iso => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExifCopyWith<_Exif> get copyWith => throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
class _$LinksTearOff {
  const _$LinksTearOff();

  _Links call(
      {required String self,
      required String html,
      required String download,
      required String download_location}) {
    return _Links(
      self: self,
      html: html,
      download: download,
      download_location: download_location,
    );
  }

  Links fromJson(Map<String, Object> json) {
    return Links.fromJson(json);
  }
}

/// @nodoc
const $Links = _$LinksTearOff();

/// @nodoc
mixin _$Links {
  String get self => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get download => throw _privateConstructorUsedError;
  String get download_location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res>;
  $Res call(
      {String self, String html, String download, String download_location});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  final Links _value;
  // ignore: unused_field
  final $Res Function(Links) _then;

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
abstract class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) then) =
      __$LinksCopyWithImpl<$Res>;
  @override
  $Res call(
      {String self, String html, String download, String download_location});
}

/// @nodoc
class __$LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(_Links _value, $Res Function(_Links) _then)
      : super(_value, (v) => _then(v as _Links));

  @override
  _Links get _value => super._value as _Links;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? download_location = freezed,
  }) {
    return _then(_Links(
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
class _$_Links implements _Links {
  _$_Links(
      {required this.self,
      required this.html,
      required this.download,
      required this.download_location});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$_$_LinksFromJson(json);

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
    return 'Links(self: $self, html: $html, download: $download, download_location: $download_location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Links &&
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
  _$LinksCopyWith<_Links> get copyWith =>
      __$LinksCopyWithImpl<_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinksToJson(this);
  }
}

abstract class _Links implements Links {
  factory _Links(
      {required String self,
      required String html,
      required String download,
      required String download_location}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

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
  _$LinksCopyWith<_Links> get copyWith => throw _privateConstructorUsedError;
}
