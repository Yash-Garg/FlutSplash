import 'package:flutsplash/models/links.dart';
import 'package:flutsplash/models/urls.dart';

class Photo {
  Photo({
    required this.id,
    required this.createdAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.urls,
    required this.links,
  });

  String id;
  DateTime createdAt;
  int width;
  int height;
  String color;
  String blurHash;
  Urls urls;
  PhotoLinks links;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        urls: Urls.fromJson(json["urls"]),
        links: PhotoLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "urls": urls.toJson(),
        "links": links.toJson(),
      };
}
