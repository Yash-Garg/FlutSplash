// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return _Urls.fromJson(json);
}

/// @nodoc
class _$UrlsTearOff {
  const _$UrlsTearOff();

  _Urls call(
      {required String raw,
      required String full,
      required String regular,
      required String small,
      required String thumb}) {
    return _Urls(
      raw: raw,
      full: full,
      regular: regular,
      small: small,
      thumb: thumb,
    );
  }

  Urls fromJson(Map<String, Object> json) {
    return Urls.fromJson(json);
  }
}

/// @nodoc
const $Urls = _$UrlsTearOff();

/// @nodoc
mixin _$Urls {
  String get raw => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res>;
  $Res call(
      {String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res> implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  final Urls _value;
  // ignore: unused_field
  final $Res Function(Urls) _then;

  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_value.copyWith(
      raw: raw == freezed
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: regular == freezed
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UrlsCopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$UrlsCopyWith(_Urls value, $Res Function(_Urls) then) =
      __$UrlsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class __$UrlsCopyWithImpl<$Res> extends _$UrlsCopyWithImpl<$Res>
    implements _$UrlsCopyWith<$Res> {
  __$UrlsCopyWithImpl(_Urls _value, $Res Function(_Urls) _then)
      : super(_value, (v) => _then(v as _Urls));

  @override
  _Urls get _value => super._value as _Urls;

  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_Urls(
      raw: raw == freezed
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: regular == freezed
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Urls implements _Urls {
  _$_Urls(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb});

  factory _$_Urls.fromJson(Map<String, dynamic> json) =>
      _$_$_UrlsFromJson(json);

  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  @override
  String toString() {
    return 'Urls(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Urls &&
            (identical(other.raw, raw) ||
                const DeepCollectionEquality().equals(other.raw, raw)) &&
            (identical(other.full, full) ||
                const DeepCollectionEquality().equals(other.full, full)) &&
            (identical(other.regular, regular) ||
                const DeepCollectionEquality()
                    .equals(other.regular, regular)) &&
            (identical(other.small, small) ||
                const DeepCollectionEquality().equals(other.small, small)) &&
            (identical(other.thumb, thumb) ||
                const DeepCollectionEquality().equals(other.thumb, thumb)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(raw) ^
      const DeepCollectionEquality().hash(full) ^
      const DeepCollectionEquality().hash(regular) ^
      const DeepCollectionEquality().hash(small) ^
      const DeepCollectionEquality().hash(thumb);

  @JsonKey(ignore: true)
  @override
  _$UrlsCopyWith<_Urls> get copyWith =>
      __$UrlsCopyWithImpl<_Urls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UrlsToJson(this);
  }
}

abstract class _Urls implements Urls {
  factory _Urls(
      {required String raw,
      required String full,
      required String regular,
      required String small,
      required String thumb}) = _$_Urls;

  factory _Urls.fromJson(Map<String, dynamic> json) = _$_Urls.fromJson;

  @override
  String get raw => throw _privateConstructorUsedError;
  @override
  String get full => throw _privateConstructorUsedError;
  @override
  String get regular => throw _privateConstructorUsedError;
  @override
  String get small => throw _privateConstructorUsedError;
  @override
  String get thumb => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UrlsCopyWith<_Urls> get copyWith => throw _privateConstructorUsedError;
}
