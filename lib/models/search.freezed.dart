// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDetails _$SearchDetailsFromJson(Map<String, dynamic> json) {
  return _SearchDetails.fromJson(json);
}

/// @nodoc
class _$SearchDetailsTearOff {
  const _$SearchDetailsTearOff();

  _SearchDetails call(
      {required int total,
      required int totalPages,
      required List<Photo>? results}) {
    return _SearchDetails(
      total: total,
      totalPages: totalPages,
      results: results,
    );
  }

  SearchDetails fromJson(Map<String, Object> json) {
    return SearchDetails.fromJson(json);
  }
}

/// @nodoc
const $SearchDetails = _$SearchDetailsTearOff();

/// @nodoc
mixin _$SearchDetails {
  int get total => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Photo>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDetailsCopyWith<SearchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDetailsCopyWith<$Res> {
  factory $SearchDetailsCopyWith(
          SearchDetails value, $Res Function(SearchDetails) then) =
      _$SearchDetailsCopyWithImpl<$Res>;
  $Res call({int total, int totalPages, List<Photo>? results});
}

/// @nodoc
class _$SearchDetailsCopyWithImpl<$Res>
    implements $SearchDetailsCopyWith<$Res> {
  _$SearchDetailsCopyWithImpl(this._value, this._then);

  final SearchDetails _value;
  // ignore: unused_field
  final $Res Function(SearchDetails) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
    ));
  }
}

/// @nodoc
abstract class _$SearchDetailsCopyWith<$Res>
    implements $SearchDetailsCopyWith<$Res> {
  factory _$SearchDetailsCopyWith(
          _SearchDetails value, $Res Function(_SearchDetails) then) =
      __$SearchDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int total, int totalPages, List<Photo>? results});
}

/// @nodoc
class __$SearchDetailsCopyWithImpl<$Res>
    extends _$SearchDetailsCopyWithImpl<$Res>
    implements _$SearchDetailsCopyWith<$Res> {
  __$SearchDetailsCopyWithImpl(
      _SearchDetails _value, $Res Function(_SearchDetails) _then)
      : super(_value, (v) => _then(v as _SearchDetails));

  @override
  _SearchDetails get _value => super._value as _SearchDetails;

  @override
  $Res call({
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_SearchDetails(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchDetails implements _SearchDetails {
  _$_SearchDetails(
      {required this.total, required this.totalPages, required this.results});

  factory _$_SearchDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchDetailsFromJson(json);

  @override
  final int total;
  @override
  final int totalPages;
  @override
  final List<Photo>? results;

  @override
  String toString() {
    return 'SearchDetails(total: $total, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchDetails &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$SearchDetailsCopyWith<_SearchDetails> get copyWith =>
      __$SearchDetailsCopyWithImpl<_SearchDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchDetailsToJson(this);
  }
}

abstract class _SearchDetails implements SearchDetails {
  factory _SearchDetails(
      {required int total,
      required int totalPages,
      required List<Photo>? results}) = _$_SearchDetails;

  factory _SearchDetails.fromJson(Map<String, dynamic> json) =
      _$_SearchDetails.fromJson;

  @override
  int get total => throw _privateConstructorUsedError;
  @override
  int get totalPages => throw _privateConstructorUsedError;
  @override
  List<Photo>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchDetailsCopyWith<_SearchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
