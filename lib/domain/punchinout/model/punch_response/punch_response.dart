import 'package:json_annotation/json_annotation.dart';

part 'punch_response.g.dart';

@JsonSerializable()
class PunchResponse {
  @JsonKey(name: 'lastPunchTime')
  String? lastPunchTime;
  @JsonKey(name: 'punch_state')
  String? punchState;
  @JsonKey(name: 'todaysHours')
  double? todaysHours;
  @JsonKey(name: 'weeksHours')
  double? weeksHours;

  PunchResponse({
    this.lastPunchTime,
    this.punchState,
    this.todaysHours,
    this.weeksHours,
  });

  factory PunchResponse.fromJson(Map<String, dynamic> json) {
    return _$PunchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PunchResponseToJson(this);
}
