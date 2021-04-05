// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    username: json['username'] as String,
    name: json['name'] as String,
    firstName: json['firstName'] as String,
    links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
    profileImage:
        ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'links': instance.links,
      'profileImage': instance.profileImage,
    };
