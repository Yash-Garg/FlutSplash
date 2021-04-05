// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$_$_PhotoFromJson(Map<String, dynamic> json) {
  return _$_Photo(
    id: json['id'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    width: json['width'] as int,
    height: json['height'] as int,
    color: json['color'] as String,
    blurHash: json['blurHash'] as String,
    description: json['description'],
    altDescription: json['altDescription'] as String,
    urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
    links: PhotoLinks.fromJson(json['links'] as Map<String, dynamic>),
    categories: json['categories'] as List<dynamic>,
    likes: json['likes'] as int,
    likedByUser: json['likedByUser'] as bool,
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
      'links': instance.links,
      'categories': instance.categories,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'user': instance.user,
    };
