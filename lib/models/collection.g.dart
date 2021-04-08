// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collection _$_$_CollectionFromJson(Map<String, dynamic> json) {
  return _$_Collection(
    id: json['id'] as String?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    published_at: json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String),
    last_collected_at: json['last_collected_at'] == null
        ? null
        : DateTime.parse(json['last_collected_at'] as String),
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    curated: json['curated'] as bool,
    featured: json['featured'] as bool,
    total_photos: json['total_photos'] as int?,
    private: json['private'] as bool,
    share_key: json['share_key'] as String?,
    tags: (json['tags'] as List<dynamic>)
        .map((e) => Tag.fromJson(e as Map<String, dynamic>))
        .toList(),
    links: CollectionLinks.fromJson(json['links'] as Map<String, dynamic>),
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    cover_photo: Photo.fromJson(json['cover_photo'] as Map<String, dynamic>),
    preview_photos: (json['preview_photos'] as List<dynamic>)
        .map((e) => PreviewPhoto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'published_at': instance.published_at?.toIso8601String(),
      'last_collected_at': instance.last_collected_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'curated': instance.curated,
      'featured': instance.featured,
      'total_photos': instance.total_photos,
      'private': instance.private,
      'share_key': instance.share_key,
      'tags': instance.tags,
      'links': instance.links,
      'user': instance.user,
      'cover_photo': instance.cover_photo,
      'preview_photos': instance.preview_photos,
    };

_$_CollectionLinks _$_$_CollectionLinksFromJson(Map<String, dynamic> json) {
  return _$_CollectionLinks(
    self: json['self'] as String?,
    html: json['html'] as String?,
    photos: json['photos'] as String?,
    related: json['related'] as String?,
  );
}

Map<String, dynamic> _$_$_CollectionLinksToJson(_$_CollectionLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'related': instance.related,
    };

_$_PreviewPhoto _$_$_PreviewPhotoFromJson(Map<String, dynamic> json) {
  return _$_PreviewPhoto(
    id: json['id'] as String?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    blur_hash: json['blur_hash'] as String?,
    urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PreviewPhotoToJson(_$_PreviewPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'blur_hash': instance.blur_hash,
      'urls': instance.urls,
    };

_$_Tag _$_$_TagFromJson(Map<String, dynamic> json) {
  return _$_Tag(
    title: json['title'] as String?,
  );
}

Map<String, dynamic> _$_$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'title': instance.title,
    };
