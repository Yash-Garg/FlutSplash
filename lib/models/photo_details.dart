import 'package:flutsplash/models/links.dart';
import 'package:flutsplash/models/urls.dart';
import 'package:flutsplash/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_details.freezed.dart';
part 'photo_details.g.dart';

@freezed
class PhotoDetails with _$PhotoDetails {
  factory PhotoDetails({
    required String? id,
    required DateTime? created_at,
    required DateTime? updated_at,
    required int? width,
    required int? height,
    required String? color,
    required String? blur_hash,
    required Urls? urls,
    required PhotoLinks? links,
    required Exif? exif,
    required User? user,
    required int? likes,
    required int? views,
    required int? downloads,
  }) = _PhotoDetails;

  factory PhotoDetails.fromJson(Map<String, dynamic> json) =>
      _$PhotoDetailsFromJson(json);
}

@freezed
class Exif with _$Exif {
  factory Exif({
    required String? make,
    required String? model,
    required String? exposure_time,
    required String? aperture,
    required String? focal_length,
    required int? iso,
  }) = _Exif;

  factory Exif.fromJson(Map<String, dynamic> json) => _$ExifFromJson(json);
}
