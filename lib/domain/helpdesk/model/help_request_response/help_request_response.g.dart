// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelpRequestResponse _$HelpRequestResponseFromJson(Map<String, dynamic> json) =>
    HelpRequestResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HelpRequestResponseToJson(
        HelpRequestResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
