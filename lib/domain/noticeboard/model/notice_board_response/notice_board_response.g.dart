// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_board_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoticeBoardResponse _$NoticeBoardResponseFromJson(Map<String, dynamic> json) =>
    NoticeBoardResponse(
      name: json['name'] as String?,
      description: json['description'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$NoticeBoardResponseToJson(
        NoticeBoardResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'time': instance.time,
    };
