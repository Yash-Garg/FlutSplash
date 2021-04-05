import 'package:flutsplash/models/links.dart';
import 'package:flutsplash/models/urls.dart';
import 'package:flutsplash/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int width,
    required int height,
    required String color,
    required String blurHash,
    required dynamic description,
    required String altDescription,
    required Urls urls,
    required PhotoLinks links,
    required List<dynamic> categories,
    required int likes,
    required bool likedByUser,
    required User user,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
