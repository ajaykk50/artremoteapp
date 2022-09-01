import 'package:json_annotation/json_annotation.dart';

part 'leavecount_response.g.dart';

@JsonSerializable()
class LeavecountResponse {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'total')
  String? total;
  @JsonKey(name: 'used')
  String? used;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  LeavecountResponse(
      {this.id, this.name, this.total, this.used, this.status, this.message});

  factory LeavecountResponse.fromJson(Map<String, dynamic> json) {
    return _$LeavecountResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeavecountResponseToJson(this);
}
