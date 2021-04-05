// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$_$_PhotoFromJson(Map<String, dynamic> json) {
  return _$_Photo(
    id: json['id'] as String,
    created_at: DateTime.parse(json['created_at'] as String),
    updated_at: DateTime.parse(json['updated_at'] as String),
    width: json['width'] as int,
    height: json['height'] as int,
    color: json['color'] as String,
    blur_hash: json['blur_hash'] as String,
    description: json['description'],
    alt_description: json['alt_description'] as String,
    urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
    links: PhotoLinks.fromJson(json['links'] as Map<String, dynamic>),
    categories: json['categories'] as List<dynamic>,
    likes: json['likes'] as int,
    liked_by_user: json['liked_by_user'] as bool,
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blur_hash,
      'description': instance.description,
      'alt_description': instance.alt_description,
      'urls': instance.urls,
      'links': instance.links,
      'categories': instance.categories,
      'likes': instance.likes,
      'liked_by_user': instance.liked_by_user,
      'user': instance.user,
    };
