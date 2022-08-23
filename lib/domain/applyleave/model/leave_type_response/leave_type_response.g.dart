// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveTypeResponse _$LeaveTypeResponseFromJson(Map<String, dynamic> json) =>
    LeaveTypeResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      total: json['total'] as String?,
      used: json['used'] as String?,
    );

Map<String, dynamic> _$LeaveTypeResponseToJson(LeaveTypeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total': instance.total,
      'used': instance.used,
    };
