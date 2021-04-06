// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collection _$_$_CollectionFromJson(Map<String, dynamic> json) {
  return _$_Collection(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'],
    publishedAt: DateTime.parse(json['publishedAt'] as String),
    lastCollectedAt: DateTime.parse(json['lastCollectedAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    curated: json['curated'] as bool,
    featured: json['featured'] as bool,
    totalPhotos: json['totalPhotos'] as int,
    private: json['private'] as bool,
    shareKey: json['shareKey'] as String,
    tags: (json['tags'] as List<dynamic>)
        .map((e) => Tag.fromJson(e as Map<String, dynamic>))
        .toList(),
    links: CollectionLinks.fromJson(json['links'] as Map<String, dynamic>),
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    coverPhoto: CoverPhoto.fromJson(json['coverPhoto'] as Map<String, dynamic>),
    previewPhotos: (json['previewPhotos'] as List<dynamic>)
        .map((e) => PreviewPhoto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'lastCollectedAt': instance.lastCollectedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'curated': instance.curated,
      'featured': instance.featured,
      'totalPhotos': instance.totalPhotos,
      'private': instance.private,
      'shareKey': instance.shareKey,
      'tags': instance.tags,
      'links': instance.links,
      'user': instance.user,
      'coverPhoto': instance.coverPhoto,
      'previewPhotos': instance.previewPhotos,
    };

_$_CoverPhoto _$_$_CoverPhotoFromJson(Map<String, dynamic> json) {
  return _$_CoverPhoto(
    id: json['id'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    promotedAt: DateTime.parse(json['promotedAt'] as String),
    width: json['width'] as int,
    height: json['height'] as int,
    color: json['color'] as String,
    blurHash: json['blurHash'] as String,
    description: json['description'],
    altDescription: json['altDescription'] as String,
    urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
    links: CoverPhotoLinks.fromJson(json['links'] as Map<String, dynamic>),
    categories: json['categories'] as List<dynamic>,
    likes: json['likes'] as int,
    likedByUser: json['likedByUser'] as bool,
    currentUserCollections: json['currentUserCollections'] as List<dynamic>,
    sponsorship: json['sponsorship'],
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CoverPhotoToJson(_$_CoverPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'promotedAt': instance.promotedAt.toIso8601String(),
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
      'currentUserCollections': instance.currentUserCollections,
      'sponsorship': instance.sponsorship,
      'user': instance.user,
    };

_$_CoverPhotoLinks _$_$_CoverPhotoLinksFromJson(Map<String, dynamic> json) {
  return _$_CoverPhotoLinks(
    self: json['self'] as String,
    html: json['html'] as String,
    download: json['download'] as String,
    downloadLocation: json['downloadLocation'] as String,
  );
}

Map<String, dynamic> _$_$_CoverPhotoLinksToJson(_$_CoverPhotoLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'downloadLocation': instance.downloadLocation,
    };

_$_Urls _$_$_UrlsFromJson(Map<String, dynamic> json) {
  return _$_Urls(
    raw: json['raw'] as String,
    full: json['full'] as String,
    regular: json['regular'] as String,
    small: json['small'] as String,
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$_$_UrlsToJson(_$_Urls instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    username: json['username'] as String,
    name: json['name'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    twitterUsername: json['twitterUsername'] as String,
    portfolioUrl: json['portfolioUrl'] as String,
    bio: json['bio'] as String,
    location: json['location'] as String,
    links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
    profileImage:
        ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>),
    instagramUsername: json['instagramUsername'] as String,
    totalCollections: json['totalCollections'] as int,
    totalLikes: json['totalLikes'] as int,
    totalPhotos: json['totalPhotos'] as int,
    acceptedTos: json['acceptedTos'] as bool,
    forHire: json['forHire'] as bool,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'twitterUsername': instance.twitterUsername,
      'portfolioUrl': instance.portfolioUrl,
      'bio': instance.bio,
      'location': instance.location,
      'links': instance.links,
      'profileImage': instance.profileImage,
      'instagramUsername': instance.instagramUsername,
      'totalCollections': instance.totalCollections,
      'totalLikes': instance.totalLikes,
      'totalPhotos': instance.totalPhotos,
      'acceptedTos': instance.acceptedTos,
      'forHire': instance.forHire,
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

_$_ProfileImage _$_$_ProfileImageFromJson(Map<String, dynamic> json) {
  return _$_ProfileImage(
    small: json['small'] as String,
    medium: json['medium'] as String,
    large: json['large'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileImageToJson(_$_ProfileImage instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$_CollectionLinks _$_$_CollectionLinksFromJson(Map<String, dynamic> json) {
  return _$_CollectionLinks(
    self: json['self'] as String,
    html: json['html'] as String,
    photos: json['photos'] as String,
    related: json['related'] as String,
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
    id: json['id'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    blurHash: json['blurHash'] as String,
    urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PreviewPhotoToJson(_$_PreviewPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'blurHash': instance.blurHash,
      'urls': instance.urls,
    };

_$_Tag _$_$_TagFromJson(Map<String, dynamic> json) {
  return _$_Tag(
    type: json['type'] as String,
    title: json['title'] as String,
    source: Source.fromJson(json['source'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'source': instance.source,
    };

_$_Source _$_$_SourceFromJson(Map<String, dynamic> json) {
  return _$_Source(
    ancestry: Ancestry.fromJson(json['ancestry'] as Map<String, dynamic>),
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    description: json['description'] as String,
    metaTitle: json['metaTitle'] as String,
    metaDescription: json['metaDescription'] as String,
    coverPhoto: CoverPhoto.fromJson(json['coverPhoto'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'ancestry': instance.ancestry,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'coverPhoto': instance.coverPhoto,
    };

_$_Ancestry _$_$_AncestryFromJson(Map<String, dynamic> json) {
  return _$_Ancestry(
    type: Category.fromJson(json['type'] as Map<String, dynamic>),
    category: Category.fromJson(json['category'] as Map<String, dynamic>),
    subcategory: Category.fromJson(json['subcategory'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AncestryToJson(_$_Ancestry instance) =>
    <String, dynamic>{
      'type': instance.type,
      'category': instance.category,
      'subcategory': instance.subcategory,
    };

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    slug: json['slug'] as String,
    prettySlug: json['prettySlug'] as String,
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'prettySlug': instance.prettySlug,
    };
