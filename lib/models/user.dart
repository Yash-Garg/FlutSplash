import 'package:flutsplash/models/links.dart';
import 'package:flutsplash/models/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String? id,
    required DateTime? updated_at,
    required String? username,
    required String? name,
    required String? first_name,
    required UserLinks links,
    required ProfileImage profile_image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
