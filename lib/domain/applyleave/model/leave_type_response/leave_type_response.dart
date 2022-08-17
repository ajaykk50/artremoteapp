import 'package:json_annotation/json_annotation.dart';

part 'leave_type_response.g.dart';

@JsonSerializable()
class LeaveTypeResponse {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'dept_name')
  String? deptName;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  LeaveTypeResponse({this.id, this.deptName, this.status, this.message});

  factory LeaveTypeResponse.fromJson(Map<String, dynamic> json) {
    return _$LeaveTypeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveTypeResponseToJson(this);
}
