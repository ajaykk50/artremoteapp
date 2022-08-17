// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicResponse _$TopicResponseFromJson(Map<String, dynamic> json) =>
    TopicResponse(
      id: json['id'] as String?,
      topicName: json['topic_name'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TopicResponseToJson(TopicResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic_name': instance.topicName,
      'status': instance.status,
      'message': instance.message,
    };
