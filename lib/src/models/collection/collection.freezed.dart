// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
class _$CollectionTearOff {
  const _$CollectionTearOff();

  _Collection call(
      {required String? id,
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
      required List<PreviewPhoto> preview_photos}) {
    return _Collection(
      id: id,
      title: title,
      description: description,
      published_at: published_at,
      last_collected_at: last_collected_at,
      updated_at: updated_at,
      curated: curated,
      featured: featured,
      total_photos: total_photos,
      private: private,
      share_key: share_key,
      tags: tags,
      links: links,
      user: user,
      cover_photo: cover_photo,
      preview_photos: preview_photos,
    );
  }

  Collection fromJson(Map<String, Object> json) {
    return Collection.fromJson(json);
  }
}

/// @nodoc
const $Collection = _$CollectionTearOff();

/// @nodoc
mixin _$Collection {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get published_at => throw _privateConstructorUsedError;
  DateTime? get last_collected_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  bool get curated => throw _privateConstructorUsedError;
  bool get featured => throw _privateConstructorUsedError;
  int? get total_photos => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  String? get share_key => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  CollectionLinks get links => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Photo get cover_photo => throw _privateConstructorUsedError;
  List<PreviewPhoto> get preview_photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? description,
      DateTime? published_at,
      DateTime? last_collected_at,
      DateTime? updated_at,
      bool curated,
      bool featured,
      int? total_photos,
      bool private,
      String? share_key,
      List<Tag> tags,
      CollectionLinks links,
      User user,
      Photo cover_photo,
      List<PreviewPhoto> preview_photos});

  $CollectionLinksCopyWith<$Res> get links;
  $UserCopyWith<$Res> get user;
  $PhotoCopyWith<$Res> get cover_photo;
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res> implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  final Collection _value;
  // ignore: unused_field
  final $Res Function(Collection) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? published_at = freezed,
    Object? last_collected_at = freezed,
    Object? updated_at = freezed,
    Object? curated = freezed,
    Object? featured = freezed,
    Object? total_photos = freezed,
    Object? private = freezed,
    Object? share_key = freezed,
    Object? tags = freezed,
    Object? links = freezed,
    Object? user = freezed,
    Object? cover_photo = freezed,
    Object? preview_photos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      published_at: published_at == freezed
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      last_collected_at: last_collected_at == freezed
          ? _value.last_collected_at
          : last_collected_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      curated: curated == freezed
          ? _value.curated
          : curated // ignore: cast_nullable_to_non_nullable
              as bool,
      featured: featured == freezed
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      total_photos: total_photos == freezed
          ? _value.total_photos
          : total_photos // ignore: cast_nullable_to_non_nullable
              as int?,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      share_key: share_key == freezed
          ? _value.share_key
          : share_key // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as CollectionLinks,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      cover_photo: cover_photo == freezed
          ? _value.cover_photo
          : cover_photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      preview_photos: preview_photos == freezed
          ? _value.preview_photos
          : preview_photos // ignore: cast_nullable_to_non_nullable
              as List<PreviewPhoto>,
    ));
  }

  @override
  $CollectionLinksCopyWith<$Res> get links {
    return $CollectionLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $PhotoCopyWith<$Res> get cover_photo {
    return $PhotoCopyWith<$Res>(_value.cover_photo, (value) {
      return _then(_value.copyWith(cover_photo: value));
    });
  }
}

/// @nodoc
abstract class _$CollectionCopyWith<$Res> implements $CollectionCopyWith<$Res> {
  factory _$CollectionCopyWith(
          _Collection value, $Res Function(_Collection) then) =
      __$CollectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? description,
      DateTime? published_at,
      DateTime? last_collected_at,
      DateTime? updated_at,
      bool curated,
      bool featured,
      int? total_photos,
      bool private,
      String? share_key,
      List<Tag> tags,
      CollectionLinks links,
      User user,
      Photo cover_photo,
      List<PreviewPhoto> preview_photos});

  @override
  $CollectionLinksCopyWith<$Res> get links;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $PhotoCopyWith<$Res> get cover_photo;
}

/// @nodoc
class __$CollectionCopyWithImpl<$Res> extends _$CollectionCopyWithImpl<$Res>
    implements _$CollectionCopyWith<$Res> {
  __$CollectionCopyWithImpl(
      _Collection _value, $Res Function(_Collection) _then)
      : super(_value, (v) => _then(v as _Collection));

  @override
  _Collection get _value => super._value as _Collection;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? published_at = freezed,
    Object? last_collected_at = freezed,
    Object? updated_at = freezed,
    Object? curated = freezed,
    Object? featured = freezed,
    Object? total_photos = freezed,
    Object? private = freezed,
    Object? share_key = freezed,
    Object? tags = freezed,
    Object? links = freezed,
    Object? user = freezed,
    Object? cover_photo = freezed,
    Object? preview_photos = freezed,
  }) {
    return _then(_Collection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      published_at: published_at == freezed
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      last_collected_at: last_collected_at == freezed
          ? _value.last_collected_at
          : last_collected_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      curated: curated == freezed
          ? _value.curated
          : curated // ignore: cast_nullable_to_non_nullable
              as bool,
      featured: featured == freezed
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
      total_photos: total_photos == freezed
          ? _value.total_photos
          : total_photos // ignore: cast_nullable_to_non_nullable
              as int?,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      share_key: share_key == freezed
          ? _value.share_key
          : share_key // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as CollectionLinks,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      cover_photo: cover_photo == freezed
          ? _value.cover_photo
          : cover_photo // ignore: cast_nullable_to_non_nullable
              as Photo,
      preview_photos: preview_photos == freezed
          ? _value.preview_photos
          : preview_photos // ignore: cast_nullable_to_non_nullable
              as List<PreviewPhoto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Collection implements _Collection {
  _$_Collection(
      {required this.id,
      required this.title,
      required this.description,
      required this.published_at,
      required this.last_collected_at,
      required this.updated_at,
      required this.curated,
      required this.featured,
      required this.total_photos,
      required this.private,
      required this.share_key,
      required this.tags,
      required this.links,
      required this.user,
      required this.cover_photo,
      required this.preview_photos});

  factory _$_Collection.fromJson(Map<String, dynamic> json) =>
      _$_$_CollectionFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? published_at;
  @override
  final DateTime? last_collected_at;
  @override
  final DateTime? updated_at;
  @override
  final bool curated;
  @override
  final bool featured;
  @override
  final int? total_photos;
  @override
  final bool private;
  @override
  final String? share_key;
  @override
  final List<Tag> tags;
  @override
  final CollectionLinks links;
  @override
  final User user;
  @override
  final Photo cover_photo;
  @override
  final List<PreviewPhoto> preview_photos;

  @override
  String toString() {
    return 'Collection(id: $id, title: $title, description: $description, published_at: $published_at, last_collected_at: $last_collected_at, updated_at: $updated_at, curated: $curated, featured: $featured, total_photos: $total_photos, private: $private, share_key: $share_key, tags: $tags, links: $links, user: $user, cover_photo: $cover_photo, preview_photos: $preview_photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Collection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.published_at, published_at) ||
                const DeepCollectionEquality()
                    .equals(other.published_at, published_at)) &&
            (identical(other.last_collected_at, last_collected_at) ||
                const DeepCollectionEquality()
                    .equals(other.last_collected_at, last_collected_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.curated, curated) ||
                const DeepCollectionEquality()
                    .equals(other.curated, curated)) &&
            (identical(other.featured, featured) ||
                const DeepCollectionEquality()
                    .equals(other.featured, featured)) &&
            (identical(other.total_photos, total_photos) ||
                const DeepCollectionEquality()
                    .equals(other.total_photos, total_photos)) &&
            (identical(other.private, private) ||
                const DeepCollectionEquality()
                    .equals(other.private, private)) &&
            (identical(other.share_key, share_key) ||
                const DeepCollectionEquality()
                    .equals(other.share_key, share_key)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.cover_photo, cover_photo) ||
                const DeepCollectionEquality()
                    .equals(other.cover_photo, cover_photo)) &&
            (identical(other.preview_photos, preview_photos) ||
                const DeepCollectionEquality()
                    .equals(other.preview_photos, preview_photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(published_at) ^
      const DeepCollectionEquality().hash(last_collected_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(curated) ^
      const DeepCollectionEquality().hash(featured) ^
      const DeepCollectionEquality().hash(total_photos) ^
      const DeepCollectionEquality().hash(private) ^
      const DeepCollectionEquality().hash(share_key) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(cover_photo) ^
      const DeepCollectionEquality().hash(preview_photos);

  @JsonKey(ignore: true)
  @override
  _$CollectionCopyWith<_Collection> get copyWith =>
      __$CollectionCopyWithImpl<_Collection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CollectionToJson(this);
  }
}

abstract class _Collection implements Collection {
  factory _Collection(
      {required String? id,
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
      required List<PreviewPhoto> preview_photos}) = _$_Collection;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$_Collection.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  DateTime? get published_at => throw _privateConstructorUsedError;
  @override
  DateTime? get last_collected_at => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  bool get curated => throw _privateConstructorUsedError;
  @override
  bool get featured => throw _privateConstructorUsedError;
  @override
  int? get total_photos => throw _privateConstructorUsedError;
  @override
  bool get private => throw _privateConstructorUsedError;
  @override
  String? get share_key => throw _privateConstructorUsedError;
  @override
  List<Tag> get tags => throw _privateConstructorUsedError;
  @override
  CollectionLinks get links => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  Photo get cover_photo => throw _privateConstructorUsedError;
  @override
  List<PreviewPhoto> get preview_photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CollectionCopyWith<_Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionLinks _$CollectionLinksFromJson(Map<String, dynamic> json) {
  return _CollectionLinks.fromJson(json);
}

/// @nodoc
class _$CollectionLinksTearOff {
  const _$CollectionLinksTearOff();

  _CollectionLinks call(
      {required String? self,
      required String? html,
      required String? photos,
      required String? related}) {
    return _CollectionLinks(
      self: self,
      html: html,
      photos: photos,
      related: related,
    );
  }

  CollectionLinks fromJson(Map<String, Object> json) {
    return CollectionLinks.fromJson(json);
  }
}

/// @nodoc
const $CollectionLinks = _$CollectionLinksTearOff();

/// @nodoc
mixin _$CollectionLinks {
  String? get self => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;
  String? get related => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionLinksCopyWith<CollectionLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionLinksCopyWith<$Res> {
  factory $CollectionLinksCopyWith(
          CollectionLinks value, $Res Function(CollectionLinks) then) =
      _$CollectionLinksCopyWithImpl<$Res>;
  $Res call({String? self, String? html, String? photos, String? related});
}

/// @nodoc
class _$CollectionLinksCopyWithImpl<$Res>
    implements $CollectionLinksCopyWith<$Res> {
  _$CollectionLinksCopyWithImpl(this._value, this._then);

  final CollectionLinks _value;
  // ignore: unused_field
  final $Res Function(CollectionLinks) _then;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? related = freezed,
  }) {
    return _then(_value.copyWith(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      related: related == freezed
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CollectionLinksCopyWith<$Res>
    implements $CollectionLinksCopyWith<$Res> {
  factory _$CollectionLinksCopyWith(
          _CollectionLinks value, $Res Function(_CollectionLinks) then) =
      __$CollectionLinksCopyWithImpl<$Res>;
  @override
  $Res call({String? self, String? html, String? photos, String? related});
}

/// @nodoc
class __$CollectionLinksCopyWithImpl<$Res>
    extends _$CollectionLinksCopyWithImpl<$Res>
    implements _$CollectionLinksCopyWith<$Res> {
  __$CollectionLinksCopyWithImpl(
      _CollectionLinks _value, $Res Function(_CollectionLinks) _then)
      : super(_value, (v) => _then(v as _CollectionLinks));

  @override
  _CollectionLinks get _value => super._value as _CollectionLinks;

  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? photos = freezed,
    Object? related = freezed,
  }) {
    return _then(_CollectionLinks(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      related: related == freezed
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CollectionLinks implements _CollectionLinks {
  _$_CollectionLinks(
      {required this.self,
      required this.html,
      required this.photos,
      required this.related});

  factory _$_CollectionLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_CollectionLinksFromJson(json);

  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? photos;
  @override
  final String? related;

  @override
  String toString() {
    return 'CollectionLinks(self: $self, html: $html, photos: $photos, related: $related)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollectionLinks &&
            (identical(other.self, self) ||
                const DeepCollectionEquality().equals(other.self, self)) &&
            (identical(other.html, html) ||
                const DeepCollectionEquality().equals(other.html, html)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.related, related) ||
                const DeepCollectionEquality().equals(other.related, related)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(self) ^
      const DeepCollectionEquality().hash(html) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(related);

  @JsonKey(ignore: true)
  @override
  _$CollectionLinksCopyWith<_CollectionLinks> get copyWith =>
      __$CollectionLinksCopyWithImpl<_CollectionLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CollectionLinksToJson(this);
  }
}

abstract class _CollectionLinks implements CollectionLinks {
  factory _CollectionLinks(
      {required String? self,
      required String? html,
      required String? photos,
      required String? related}) = _$_CollectionLinks;

  factory _CollectionLinks.fromJson(Map<String, dynamic> json) =
      _$_CollectionLinks.fromJson;

  @override
  String? get self => throw _privateConstructorUsedError;
  @override
  String? get html => throw _privateConstructorUsedError;
  @override
  String? get photos => throw _privateConstructorUsedError;
  @override
  String? get related => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CollectionLinksCopyWith<_CollectionLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviewPhoto _$PreviewPhotoFromJson(Map<String, dynamic> json) {
  return _PreviewPhoto.fromJson(json);
}

/// @nodoc
class _$PreviewPhotoTearOff {
  const _$PreviewPhotoTearOff();

  _PreviewPhoto call(
      {required String? id,
      required DateTime? created_at,
      required DateTime? updated_at,
      required String? blur_hash,
      required Urls urls}) {
    return _PreviewPhoto(
      id: id,
      created_at: created_at,
      updated_at: updated_at,
      blur_hash: blur_hash,
      urls: urls,
    );
  }

  PreviewPhoto fromJson(Map<String, Object> json) {
    return PreviewPhoto.fromJson(json);
  }
}

/// @nodoc
const $PreviewPhoto = _$PreviewPhotoTearOff();

/// @nodoc
mixin _$PreviewPhoto {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  String? get blur_hash => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewPhotoCopyWith<PreviewPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewPhotoCopyWith<$Res> {
  factory $PreviewPhotoCopyWith(
          PreviewPhoto value, $Res Function(PreviewPhoto) then) =
      _$PreviewPhotoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? created_at,
      DateTime? updated_at,
      String? blur_hash,
      Urls urls});

  $UrlsCopyWith<$Res> get urls;
}

/// @nodoc
class _$PreviewPhotoCopyWithImpl<$Res> implements $PreviewPhotoCopyWith<$Res> {
  _$PreviewPhotoCopyWithImpl(this._value, this._then);

  final PreviewPhoto _value;
  // ignore: unused_field
  final $Res Function(PreviewPhoto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? blur_hash = freezed,
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blur_hash: blur_hash == freezed
          ? _value.blur_hash
          : blur_hash // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
    ));
  }

  @override
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value));
    });
  }
}

/// @nodoc
abstract class _$PreviewPhotoCopyWith<$Res>
    implements $PreviewPhotoCopyWith<$Res> {
  factory _$PreviewPhotoCopyWith(
          _PreviewPhoto value, $Res Function(_PreviewPhoto) then) =
      __$PreviewPhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? created_at,
      DateTime? updated_at,
      String? blur_hash,
      Urls urls});

  @override
  $UrlsCopyWith<$Res> get urls;
}

/// @nodoc
class __$PreviewPhotoCopyWithImpl<$Res> extends _$PreviewPhotoCopyWithImpl<$Res>
    implements _$PreviewPhotoCopyWith<$Res> {
  __$PreviewPhotoCopyWithImpl(
      _PreviewPhoto _value, $Res Function(_PreviewPhoto) _then)
      : super(_value, (v) => _then(v as _PreviewPhoto));

  @override
  _PreviewPhoto get _value => super._value as _PreviewPhoto;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? blur_hash = freezed,
    Object? urls = freezed,
  }) {
    return _then(_PreviewPhoto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blur_hash: blur_hash == freezed
          ? _value.blur_hash
          : blur_hash // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PreviewPhoto implements _PreviewPhoto {
  _$_PreviewPhoto(
      {required this.id,
      required this.created_at,
      required this.updated_at,
      required this.blur_hash,
      required this.urls});

  factory _$_PreviewPhoto.fromJson(Map<String, dynamic> json) =>
      _$_$_PreviewPhotoFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final String? blur_hash;
  @override
  final Urls urls;

  @override
  String toString() {
    return 'PreviewPhoto(id: $id, created_at: $created_at, updated_at: $updated_at, blur_hash: $blur_hash, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreviewPhoto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.blur_hash, blur_hash) ||
                const DeepCollectionEquality()
                    .equals(other.blur_hash, blur_hash)) &&
            (identical(other.urls, urls) ||
                const DeepCollectionEquality().equals(other.urls, urls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(blur_hash) ^
      const DeepCollectionEquality().hash(urls);

  @JsonKey(ignore: true)
  @override
  _$PreviewPhotoCopyWith<_PreviewPhoto> get copyWith =>
      __$PreviewPhotoCopyWithImpl<_PreviewPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreviewPhotoToJson(this);
  }
}

abstract class _PreviewPhoto implements PreviewPhoto {
  factory _PreviewPhoto(
      {required String? id,
      required DateTime? created_at,
      required DateTime? updated_at,
      required String? blur_hash,
      required Urls urls}) = _$_PreviewPhoto;

  factory _PreviewPhoto.fromJson(Map<String, dynamic> json) =
      _$_PreviewPhoto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  String? get blur_hash => throw _privateConstructorUsedError;
  @override
  Urls get urls => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreviewPhotoCopyWith<_PreviewPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
class _$TagTearOff {
  const _$TagTearOff();

  _Tag call({required String? title}) {
    return _Tag(
      title: title,
    );
  }

  Tag fromJson(Map<String, Object> json) {
    return Tag.fromJson(json);
  }
}

/// @nodoc
const $Tag = _$TagTearOff();

/// @nodoc
mixin _$Tag {
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res>;
  $Res call({String? title});
}

/// @nodoc
class _$TagCopyWithImpl<$Res> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  final Tag _value;
  // ignore: unused_field
  final $Res Function(Tag) _then;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) then) =
      __$TagCopyWithImpl<$Res>;
  @override
  $Res call({String? title});
}

/// @nodoc
class __$TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(_Tag _value, $Res Function(_Tag) _then)
      : super(_value, (v) => _then(v as _Tag));

  @override
  _Tag get _value => super._value as _Tag;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_Tag(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Tag implements _Tag {
  _$_Tag({required this.title});

  factory _$_Tag.fromJson(Map<String, dynamic> json) => _$_$_TagFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return 'Tag(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tag &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TagCopyWith<_Tag> get copyWith =>
      __$TagCopyWithImpl<_Tag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TagToJson(this);
  }
}

abstract class _Tag implements Tag {
  factory _Tag({required String? title}) = _$_Tag;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$_Tag.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagCopyWith<_Tag> get copyWith => throw _privateConstructorUsedError;
}
