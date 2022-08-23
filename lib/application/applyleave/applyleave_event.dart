part of 'applyleave_bloc.dart';

@freezed
class ApplyleaveEvent with _$ApplyleaveEvent {
  const factory ApplyleaveEvent.getleavetype({required String token}) =
      Getleave;

  const factory ApplyleaveEvent.submitleave(
      {required String token,
      required String ccMail,
      required String comment,
      required List<DateTime> dates,
      required String leaveType,
      required String leaveDuration}) = Submitleave;
}
