import 'package:json_annotation/json_annotation.dart';

part 'topic_response.g.dart';

@JsonSerializable()
class TopicResponse {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'topic_name')
  String? topicName;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  TopicResponse({this.id, this.topicName, this.status, this.message});

  factory TopicResponse.fromJson(Map<String, dynamic> json) {
    return _$TopicResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopicResponseToJson(this);
}
