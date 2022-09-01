import 'package:json_annotation/json_annotation.dart';

part 'leavedetails_response.g.dart';

@JsonSerializable()
class LeavedetailsResponse {
  @JsonKey(name: 'leave_count')
  List<LeaveCount>? leaveCount;
  @JsonKey(name: 'Leave_list')
  List<LeaveList>? leaveList;

  LeavedetailsResponse({this.leaveCount, this.leaveList});

  factory LeavedetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$LeavedetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeavedetailsResponseToJson(this);
}

@JsonSerializable()
class LeaveCount {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'leave_used')
  String? leaveUsed;

  LeaveCount({this.id, this.name, this.leaveUsed});

  factory LeaveCount.fromJson(Map<String, dynamic> json) {
    return _$LeaveCountFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveCountToJson(this);
}

@JsonSerializable()
class LeaveList {
  String? id;
  String? date;
  String? type;
  @JsonKey(name: 'Duration')
  String? duration;
  String? status;
  String? statusId;
  @JsonKey(name: 'leave_request_id')
  String? leaveRequestId;

  LeaveList({
    this.id,
    this.date,
    this.type,
    this.duration,
    this.status,
    this.statusId,
    this.leaveRequestId,
  });

  factory LeaveList.fromJson(Map<String, dynamic> json) {
    return _$LeaveListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveListToJson(this);
}
