import 'package:json_annotation/json_annotation.dart';

part 'notice_board_response.g.dart';

@JsonSerializable()
class NoticeBoardResponse {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'time')
  String? time;

  NoticeBoardResponse({this.name, this.description, this.time});

  factory NoticeBoardResponse.fromJson(Map<String, dynamic> json) {
    return _$NoticeBoardResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NoticeBoardResponseToJson(this);
}
