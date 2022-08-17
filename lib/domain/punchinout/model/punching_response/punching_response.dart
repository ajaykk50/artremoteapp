import 'package:json_annotation/json_annotation.dart';

part 'punching_response.g.dart';

@JsonSerializable()
class PunchingResponse {
  @JsonKey(name: 'punch_state')
  String? punchState;
  @JsonKey(name: 'status')
  String? status;

  PunchingResponse({this.punchState, this.status});

  factory PunchingResponse.fromJson(Map<String, dynamic> json) {
    return _$PunchingResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PunchingResponseToJson(this);
}
