import 'package:flutsplash/models/links.dart';
import 'package:flutsplash/models/urls.dart';
import 'package:flutsplash/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    required String? id,
    required DateTime? created_at,
    required DateTime? updated_at,
    required int? width,
    required int? height,
    required String? color,
    required String? blur_hash,
    required dynamic? description,
    required Urls urls,
    required PhotoLinks links,
    required List<dynamic> categories,
    required int? likes,
    required bool? liked_by_user,
    required User user,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
