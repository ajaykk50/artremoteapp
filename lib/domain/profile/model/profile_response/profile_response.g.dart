// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      empNumber: json['emp_number'] as String?,
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      perMobile: json['per_mobile'] as String?,
      perEmail: json['per_email'] as String?,
      workEmail: json['work_email'] as String?,
      emergencyContact: json['emergency_contact'] as String?,
      userName: json['user_name'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'emp_number': instance.empNumber,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'per_mobile': instance.perMobile,
      'per_email': instance.perEmail,
      'work_email': instance.workEmail,
      'emergency_contact': instance.emergencyContact,
      'user_name': instance.userName,
      'status': instance.status,
      'message': instance.message,
    };
