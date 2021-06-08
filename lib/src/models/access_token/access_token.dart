import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
class AccessToken with _$AccessToken {
  factory AccessToken({
    required String access_token,
    required String token_type,
    required String scope,
    required int created_at,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}
