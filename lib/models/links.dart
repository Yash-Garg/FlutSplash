import 'package:freezed_annotation/freezed_annotation.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class PhotoLinks with _$PhotoLinks {
  factory PhotoLinks({
    required String? self,
    required String? html,
    required String? download,
    required String? download_location,
  }) = _PhotoLinks;

  factory PhotoLinks.fromJson(Map<String, dynamic> json) =>
      _$PhotoLinksFromJson(json);
}

@freezed
class UserLinks with _$UserLinks {
  factory UserLinks({
    required String? self,
    required String? html,
    required String? photos,
    required String? likes,
    required String? portfolio,
    required String? following,
    required String? followers,
  }) = _UserLinks;

  factory UserLinks.fromJson(Map<String, dynamic> json) =>
      _$UserLinksFromJson(json);
}
