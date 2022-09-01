import 'package:json_annotation/json_annotation.dart';

part 'help_request_response.g.dart';

@JsonSerializable()
class HelpRequestResponse {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  HelpRequestResponse({this.status, this.message});

  factory HelpRequestResponse.fromJson(Map<String, dynamic> json) {
    return _$HelpRequestResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HelpRequestResponseToJson(this);
}
