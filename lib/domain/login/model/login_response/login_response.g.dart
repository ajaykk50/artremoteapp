// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      status: json['status'] as String?,
      role: json['role'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'status': instance.status,
      'message': instance.message,
      'role': instance.role,
    };

Accesstoken _$AccesstokenFromJson(Map<String, dynamic> json) => Accesstoken(
      token: json['token'] as String?,
      expiry: json['expiry'] as int?,
    );

Map<String, dynamic> _$AccesstokenToJson(Accesstoken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiry': instance.expiry,
    };

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      token: json['token'] as String?,
      expiry: json['expiry'] as int?,
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiry': instance.expiry,
    };

Token _$TokenFromJson(Map<String, dynamic> json) => Token(
      accesstoken: json['accesstoken'] == null
          ? null
          : Accesstoken.fromJson(json['accesstoken'] as Map<String, dynamic>),
      refreshToken: json['refreshToken'] == null
          ? null
          : RefreshToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'accesstoken': instance.accesstoken,
      'refreshToken': instance.refreshToken,
    };
