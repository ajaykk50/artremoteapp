part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getprofile({required String token}) = Getprofile;
  const factory ProfileEvent.updateprofile(
      {required String token,
      required String mobile,
      required String workemail,
      required String othemail,
      required String emergencyno}) = Updateprofile;

  const factory ProfileEvent.changepasswd(
      {required String token,
      required String currentpasswd,
      required String newpasswd}) = Changepasswd;
}
