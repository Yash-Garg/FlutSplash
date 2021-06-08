// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDetails _$_$_SearchDetailsFromJson(Map<String, dynamic> json) {
  return _$_SearchDetails(
    total: json['total'] as int,
    totalPages: json['totalPages'] as int,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SearchDetailsToJson(_$_SearchDetails instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalPages': instance.totalPages,
      'results': instance.results,
    };
