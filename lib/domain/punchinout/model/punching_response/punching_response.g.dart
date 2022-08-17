// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'punching_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PunchingResponse _$PunchingResponseFromJson(Map<String, dynamic> json) =>
    PunchingResponse(
      punchState: json['punch_state'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$PunchingResponseToJson(PunchingResponse instance) =>
    <String, dynamic>{
      'punch_state': instance.punchState,
      'status': instance.status,
    };
