// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoLinks _$_$_PhotoLinksFromJson(Map<String, dynamic> json) {
  return _$_PhotoLinks(
    self: json['self'] as String,
    html: json['html'] as String,
    download: json['download'] as String,
    download_location: json['download_location'] as String,
  );
}

Map<String, dynamic> _$_$_PhotoLinksToJson(_$_PhotoLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'download_location': instance.download_location,
    };

_$_UserLinks _$_$_UserLinksFromJson(Map<String, dynamic> json) {
  return _$_UserLinks(
    self: json['self'] as String,
    html: json['html'] as String,
    photos: json['photos'] as String,
    likes: json['likes'] as String,
    portfolio: json['portfolio'] as String,
    following: json['following'] as String,
    followers: json['followers'] as String,
  );
}

Map<String, dynamic> _$_$_UserLinksToJson(_$_UserLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers,
    };
