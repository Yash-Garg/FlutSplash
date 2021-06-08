// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessToken _$_$_AccessTokenFromJson(Map<String, dynamic> json) {
  return _$_AccessToken(
    access_token: json['access_token'] as String,
    token_type: json['token_type'] as String,
    scope: json['scope'] as String,
    created_at: json['created_at'] as int,
  );
}

Map<String, dynamic> _$_$_AccessTokenToJson(_$_AccessToken instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'scope': instance.scope,
      'created_at': instance.created_at,
    };
