// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'access_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) {
  return _AccessToken.fromJson(json);
}

/// @nodoc
class _$AccessTokenTearOff {
  const _$AccessTokenTearOff();

  _AccessToken call(
      {required String access_token,
      required String token_type,
      required String scope,
      required int created_at}) {
    return _AccessToken(
      access_token: access_token,
      token_type: token_type,
      scope: scope,
      created_at: created_at,
    );
  }

  AccessToken fromJson(Map<String, Object> json) {
    return AccessToken.fromJson(json);
  }
}

/// @nodoc
const $AccessToken = _$AccessTokenTearOff();

/// @nodoc
mixin _$AccessToken {
  String get access_token => throw _privateConstructorUsedError;
  String get token_type => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  int get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res>;
  $Res call(
      {String access_token, String token_type, String scope, int created_at});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res> implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  final AccessToken _value;
  // ignore: unused_field
  final $Res Function(AccessToken) _then;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? scope = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: token_type == freezed
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AccessTokenCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$AccessTokenCopyWith(
          _AccessToken value, $Res Function(_AccessToken) then) =
      __$AccessTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {String access_token, String token_type, String scope, int created_at});
}

/// @nodoc
class __$AccessTokenCopyWithImpl<$Res> extends _$AccessTokenCopyWithImpl<$Res>
    implements _$AccessTokenCopyWith<$Res> {
  __$AccessTokenCopyWithImpl(
      _AccessToken _value, $Res Function(_AccessToken) _then)
      : super(_value, (v) => _then(v as _AccessToken));

  @override
  _AccessToken get _value => super._value as _AccessToken;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? scope = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_AccessToken(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      token_type: token_type == freezed
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccessToken implements _AccessToken {
  _$_AccessToken(
      {required this.access_token,
      required this.token_type,
      required this.scope,
      required this.created_at});

  factory _$_AccessToken.fromJson(Map<String, dynamic> json) =>
      _$_$_AccessTokenFromJson(json);

  @override
  final String access_token;
  @override
  final String token_type;
  @override
  final String scope;
  @override
  final int created_at;

  @override
  String toString() {
    return 'AccessToken(access_token: $access_token, token_type: $token_type, scope: $scope, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessToken &&
            (identical(other.access_token, access_token) ||
                const DeepCollectionEquality()
                    .equals(other.access_token, access_token)) &&
            (identical(other.token_type, token_type) ||
                const DeepCollectionEquality()
                    .equals(other.token_type, token_type)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(access_token) ^
      const DeepCollectionEquality().hash(token_type) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$AccessTokenCopyWith<_AccessToken> get copyWith =>
      __$AccessTokenCopyWithImpl<_AccessToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccessTokenToJson(this);
  }
}

abstract class _AccessToken implements AccessToken {
  factory _AccessToken(
      {required String access_token,
      required String token_type,
      required String scope,
      required int created_at}) = _$_AccessToken;

  factory _AccessToken.fromJson(Map<String, dynamic> json) =
      _$_AccessToken.fromJson;

  @override
  String get access_token => throw _privateConstructorUsedError;
  @override
  String get token_type => throw _privateConstructorUsedError;
  @override
  String get scope => throw _privateConstructorUsedError;
  @override
  int get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccessTokenCopyWith<_AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}
