import 'package:freezed_annotation/freezed_annotation.dart';

import '../photo/photo.dart';
import '../urls/urls.dart';
import '../user/user.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  factory Collection({
    required String? id,
    required String? title,
    required String? description,
    required DateTime? published_at,
    required DateTime? last_collected_at,
    required DateTime? updated_at,
    required bool curated,
    required bool featured,
    required int? total_photos,
    required bool private,
    required String? share_key,
    required List<Tag> tags,
    required CollectionLinks links,
    required User user,
    required Photo cover_photo,
    required List<PreviewPhoto> preview_photos,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}

@freezed
class CollectionLinks with _$CollectionLinks {
  factory CollectionLinks({
    required String? self,
    required String? html,
    required String? photos,
    required String? related,
  }) = _CollectionLinks;

  factory CollectionLinks.fromJson(Map<String, dynamic> json) =>
      _$CollectionLinksFromJson(json);
}

@freezed
class PreviewPhoto with _$PreviewPhoto {
  factory PreviewPhoto({
    required String? id,
    required DateTime? created_at,
    required DateTime? updated_at,
    required String? blur_hash,
    required Urls urls,
  }) = _PreviewPhoto;

  factory PreviewPhoto.fromJson(Map<String, dynamic> json) =>
      _$PreviewPhotoFromJson(json);
}

@freezed
class Tag with _$Tag {
  factory Tag({
    required String? title,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
