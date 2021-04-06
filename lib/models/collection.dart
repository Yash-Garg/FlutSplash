import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  factory Collection({
    required String id,
    required String title,
    required dynamic description,
    required DateTime publishedAt,
    required DateTime lastCollectedAt,
    required DateTime updatedAt,
    required bool curated,
    required bool featured,
    required int totalPhotos,
    required bool private,
    required String shareKey,
    required List<Tag> tags,
    required CollectionLinks links,
    required User user,
    required CoverPhoto coverPhoto,
    required List<PreviewPhoto> previewPhotos,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}

@freezed
class CoverPhoto with _$CoverPhoto {
  factory CoverPhoto({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime promotedAt,
    required int width,
    required int height,
    required String color,
    required String blurHash,
    required dynamic description,
    required String altDescription,
    required Urls urls,
    required CoverPhotoLinks links,
    required List<dynamic> categories,
    required int likes,
    required bool likedByUser,
    required List<dynamic> currentUserCollections,
    required dynamic sponsorship,
    required User user,
  }) = _CoverPhoto;

  factory CoverPhoto.fromJson(Map<String, dynamic> json) =>
      _$CoverPhotoFromJson(json);
}

@freezed
class CoverPhotoLinks with _$CoverPhotoLinks {
  factory CoverPhotoLinks({
    required String self,
    required String html,
    required String download,
    required String downloadLocation,
  }) = _CoverPhotoLinks;

  factory CoverPhotoLinks.fromJson(Map<String, dynamic> json) =>
      _$CoverPhotoLinksFromJson(json);
}

@freezed
class Urls with _$Urls {
  factory Urls({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) = _Urls;

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    required String id,
    required DateTime updatedAt,
    required String username,
    required String name,
    required String firstName,
    required String lastName,
    required String twitterUsername,
    required String portfolioUrl,
    required String bio,
    required String location,
    required UserLinks links,
    required ProfileImage profileImage,
    required String instagramUsername,
    required int totalCollections,
    required int totalLikes,
    required int totalPhotos,
    required bool acceptedTos,
    required bool forHire,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserLinks with _$UserLinks {
  factory UserLinks({
    required String self,
    required String html,
    required String photos,
    required String likes,
    required String portfolio,
    required String following,
    required String followers,
  }) = _UserLinks;

  factory UserLinks.fromJson(Map<String, dynamic> json) =>
      _$UserLinksFromJson(json);
}

@freezed
class ProfileImage with _$ProfileImage {
  factory ProfileImage({
    required String small,
    required String medium,
    required String large,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageFromJson(json);
}

@freezed
class CollectionLinks with _$CollectionLinks {
  factory CollectionLinks({
    required String self,
    required String html,
    required String photos,
    required String related,
  }) = _CollectionLinks;

  factory CollectionLinks.fromJson(Map<String, dynamic> json) =>
      _$CollectionLinksFromJson(json);
}

@freezed
class PreviewPhoto with _$PreviewPhoto {
  factory PreviewPhoto({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String blurHash,
    required Urls urls,
  }) = _PreviewPhoto;

  factory PreviewPhoto.fromJson(Map<String, dynamic> json) =>
      _$PreviewPhotoFromJson(json);
}

@freezed
class Tag with _$Tag {
  factory Tag({
    required String type,
    required String title,
    required Source source,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class Source with _$Source {
  factory Source({
    required Ancestry ancestry,
    required String title,
    required String subtitle,
    required String description,
    required String metaTitle,
    required String metaDescription,
    required CoverPhoto coverPhoto,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

@freezed
class Ancestry with _$Ancestry {
  factory Ancestry({
    required Category type,
    required Category category,
    required Category subcategory,
  }) = _Ancestry;

  factory Ancestry.fromJson(Map<String, dynamic> json) =>
      _$AncestryFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    required String slug,
    required String prettySlug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
