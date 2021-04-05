// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    updated_at: DateTime.parse(json['updated_at'] as String),
    username: json['username'] as String,
    name: json['name'] as String,
    first_name: json['first_name'] as String,
    links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
    profile_image:
        ProfileImage.fromJson(json['profile_image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updated_at.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.first_name,
      'links': instance.links,
      'profile_image': instance.profile_image,
    };
