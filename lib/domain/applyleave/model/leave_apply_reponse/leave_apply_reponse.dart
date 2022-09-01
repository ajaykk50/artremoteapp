import 'package:json_annotation/json_annotation.dart';

part 'leave_apply_reponse.g.dart';

@JsonSerializable()
class LeaveApplyReponse {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  LeaveApplyReponse({this.status, this.message});

  factory LeaveApplyReponse.fromJson(Map<String, dynamic> json) {
    return _$LeaveApplyReponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveApplyReponseToJson(this);
}
