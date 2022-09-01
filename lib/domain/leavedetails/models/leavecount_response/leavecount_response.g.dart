// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leavecount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeavecountResponse _$LeavecountResponseFromJson(Map<String, dynamic> json) =>
    LeavecountResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      total: json['total'] as String?,
      used: json['used'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LeavecountResponseToJson(LeavecountResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total': instance.total,
      'used': instance.used,
      'status': instance.status,
      'message': instance.message,
    };
