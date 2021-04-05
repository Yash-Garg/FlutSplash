// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required DateTime updated_at,
      required String username,
      required String name,
      required String first_name,
      required UserLinks links,
      required ProfileImage profile_image}) {
    return _User(
      id: id,
      updated_at: updated_at,
      username: username,
      name: name,
      first_name: first_name,
      links: links,
      profile_image: profile_image,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  UserLinks get links => throw _privateConstructorUsedError;
  ProfileImage get profile_image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime updated_at,
      String username,
      String name,
      String first_name,
      UserLinks links,
      ProfileImage profile_image});

  $UserLinksCopyWith<$Res> get links;
  $ProfileImageCopyWith<$Res> get profile_image;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? updated_at = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? first_name = freezed,
    Object? links = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks,
      profile_image: profile_image == freezed
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
    ));
  }

  @override
  $UserLinksCopyWith<$Res> get links {
    return $UserLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $ProfileImageCopyWith<$Res> get profile_image {
    return $ProfileImageCopyWith<$Res>(_value.profile_image, (value) {
      return _then(_value.copyWith(profile_image: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime updated_at,
      String username,
      String name,
      String first_name,
      UserLinks links,
      ProfileImage profile_image});

  @override
  $UserLinksCopyWith<$Res> get links;
  @override
  $ProfileImageCopyWith<$Res> get profile_image;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? updated_at = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? first_name = freezed,
    Object? links = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks,
      profile_image: profile_image == freezed
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  _$_User(
      {required this.id,
      required this.updated_at,
      required this.username,
      required this.name,
      required this.first_name,
      required this.links,
      required this.profile_image});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final DateTime updated_at;
  @override
  final String username;
  @override
  final String name;
  @override
  final String first_name;
  @override
  final UserLinks links;
  @override
  final ProfileImage profile_image;

  @override
  String toString() {
    return 'User(id: $id, updated_at: $updated_at, username: $username, name: $name, first_name: $first_name, links: $links, profile_image: $profile_image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.profile_image, profile_image) ||
                const DeepCollectionEquality()
                    .equals(other.profile_image, profile_image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(profile_image);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required String id,
      required DateTime updated_at,
      required String username,
      required String name,
      required String first_name,
      required UserLinks links,
      required ProfileImage profile_image}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get updated_at => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get first_name => throw _privateConstructorUsedError;
  @override
  UserLinks get links => throw _privateConstructorUsedError;
  @override
  ProfileImage get profile_image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
