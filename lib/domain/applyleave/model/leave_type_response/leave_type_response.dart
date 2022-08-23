import 'package:json_annotation/json_annotation.dart';

part 'leave_type_response.g.dart';

@JsonSerializable()
class LeaveTypeResponse {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'total')
  String? total;
  @JsonKey(name: 'used')
  String? used;

  LeaveTypeResponse({this.id, this.name, this.total, this.used});

  factory LeaveTypeResponse.fromJson(Map<String, dynamic> json) {
    return _$LeaveTypeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveTypeResponseToJson(this);
  void toList() {}
}
