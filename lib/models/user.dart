import 'package:flutsplash/models/links.dart';
import 'package:flutsplash/models/profile.dart';

class User {
  User({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.firstName,
    required this.links,
    required this.profileImage,
  });

  final String id;
  final DateTime updatedAt;
  final String username;
  final String name;
  final String firstName;
  final UserLinks links;
  final ProfileImage profileImage;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        links: UserLinks.fromJson(json["links"]),
        profileImage: ProfileImage.fromJson(json["profile_image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "updated_at": updatedAt.toIso8601String(),
        "username": username,
        "name": name,
        "first_name": firstName,
        "links": links.toJson(),
        "profile_image": profileImage.toJson(),
      };
}
