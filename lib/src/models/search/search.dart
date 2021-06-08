import 'package:freezed_annotation/freezed_annotation.dart';

import '../photo/photo.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchDetails with _$SearchDetails {
  factory SearchDetails({
    required int total,
    required int totalPages,
    required List<Photo>? results,
  }) = _SearchDetails;

  factory SearchDetails.fromJson(Map<String, dynamic> json) =>
      _$SearchDetailsFromJson(json);
}
