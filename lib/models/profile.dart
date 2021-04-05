class ProfileImage {
  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  final String small;
  final String medium;
  final String large;

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
      };
}
