// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveTypeResponse _$LeaveTypeResponseFromJson(Map<String, dynamic> json) =>
    LeaveTypeResponse(
      id: json['id'] as String?,
      deptName: json['dept_name'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LeaveTypeResponseToJson(LeaveTypeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dept_name': instance.deptName,
      'status': instance.status,
      'message': instance.message,
    };
