// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'punch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PunchResponse _$PunchResponseFromJson(Map<String, dynamic> json) =>
    PunchResponse(
      lastPunchTime: json['lastPunchTime'] as String?,
      punchState: json['punch_state'] as String?,
      todaysHours: (json['todaysHours'] as num?)?.toDouble(),
      weeksHours: (json['weeksHours'] as num?)?.toDouble(),
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PunchResponseToJson(PunchResponse instance) =>
    <String, dynamic>{
      'lastPunchTime': instance.lastPunchTime,
      'punch_state': instance.punchState,
      'todaysHours': instance.todaysHours,
      'weeksHours': instance.weeksHours,
      'status': instance.status,
      'message': instance.message,
    };
