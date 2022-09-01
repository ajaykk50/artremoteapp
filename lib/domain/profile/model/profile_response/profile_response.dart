import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  @JsonKey(name: 'emp_number')
  String? empNumber;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'middle_name')
  String? middleName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'per_mobile')
  String? perMobile;
  @JsonKey(name: 'per_email')
  String? perEmail;
  @JsonKey(name: 'work_email')
  String? workEmail;
  @JsonKey(name: 'emergency_contact')
  String? emergencyContact;
  @JsonKey(name: 'user_name')
  String? userName;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  ProfileResponse(
      {this.empNumber,
      this.firstName,
      this.middleName,
      this.lastName,
      this.perMobile,
      this.perEmail,
      this.workEmail,
      this.emergencyContact,
      this.userName,
      this.status,
      this.message});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    return _$ProfileResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
