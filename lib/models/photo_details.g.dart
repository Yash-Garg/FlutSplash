// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoDetails _$_$_PhotoDetailsFromJson(Map<String, dynamic> json) {
  return _$_PhotoDetails(
    id: json['id'] as String?,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updated_at: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    width: json['width'] as int?,
    height: json['height'] as int?,
    color: json['color'] as String?,
    blur_hash: json['blur_hash'] as String?,
    urls: json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    links: json['links'] == null
        ? null
        : PhotoLinks.fromJson(json['links'] as Map<String, dynamic>),
    exif: json['exif'] == null
        ? null
        : Exif.fromJson(json['exif'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    views: json['views'] as int?,
    downloads: json['downloads'] as int?,
  );
}

Map<String, dynamic> _$_$_PhotoDetailsToJson(_$_PhotoDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blur_hash,
      'urls': instance.urls,
      'links': instance.links,
      'exif': instance.exif,
      'user': instance.user,
      'views': instance.views,
      'downloads': instance.downloads,
    };

_$_Exif _$_$_ExifFromJson(Map<String, dynamic> json) {
  return _$_Exif(
    make: json['make'] as String?,
    model: json['model'] as String?,
    exposure_time: json['exposure_time'] as String?,
    aperture: json['aperture'] as String?,
    focal_length: json['focal_length'] as String?,
    iso: json['iso'] as int?,
  );
}

Map<String, dynamic> _$_$_ExifToJson(_$_Exif instance) => <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'exposure_time': instance.exposure_time,
      'aperture': instance.aperture,
      'focal_length': instance.focal_length,
      'iso': instance.iso,
    };
