import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'token')
  Token? token;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'role')
  String? role;

  LoginResponse({this.token, this.status, this.role, this.message});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class Accesstoken {
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'expiry')
  int? expiry;

  Accesstoken({this.token, this.expiry});

  factory Accesstoken.fromJson(Map<String, dynamic> json) {
    return _$AccesstokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccesstokenToJson(this);
}

@JsonSerializable()
class RefreshToken {
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'expiry')
  int? expiry;

  RefreshToken({this.token, this.expiry});

  factory RefreshToken.fromJson(Map<String, dynamic> json) {
    return _$RefreshTokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);
}

@JsonSerializable()
class Token {
  @JsonKey(name: 'accesstoken')
  Accesstoken? accesstoken;
  @JsonKey(name: 'refreshToken')
  RefreshToken? refreshToken;

  Token({this.accesstoken, this.refreshToken});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
