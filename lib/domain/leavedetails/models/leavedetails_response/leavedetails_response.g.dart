// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leavedetails_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeavedetailsResponse _$LeavedetailsResponseFromJson(
        Map<String, dynamic> json) =>
    LeavedetailsResponse(
      leaveCount: (json['leave_count'] as List<dynamic>?)
          ?.map((e) => LeaveCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      leaveList: (json['Leave_list'] as List<dynamic>?)
          ?.map((e) => LeaveList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LeavedetailsResponseToJson(
        LeavedetailsResponse instance) =>
    <String, dynamic>{
      'leave_count': instance.leaveCount,
      'Leave_list': instance.leaveList,
    };

LeaveCount _$LeaveCountFromJson(Map<String, dynamic> json) => LeaveCount(
      id: json['id'] as String?,
      name: json['name'] as String?,
      leaveUsed: json['leave_used'] as String?,
    );

Map<String, dynamic> _$LeaveCountToJson(LeaveCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'leave_used': instance.leaveUsed,
    };

LeaveList _$LeaveListFromJson(Map<String, dynamic> json) => LeaveList(
      id: json['id'] as String?,
      date: json['date'] as String?,
      type: json['type'] as String?,
      duration: json['Duration'] as String?,
      status: json['status'] as String?,
      statusId: json['statusId'] as String?,
      leaveRequestId: json['leave_request_id'] as String?,
    );

Map<String, dynamic> _$LeaveListToJson(LeaveList instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'type': instance.type,
      'Duration': instance.duration,
      'status': instance.status,
      'statusId': instance.statusId,
      'leave_request_id': instance.leaveRequestId,
    };
