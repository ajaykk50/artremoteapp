part of 'leave_type_bloc.dart';

@freezed
class LeaveTypeEvent with _$LeaveTypeEvent {
  const factory LeaveTypeEvent.getleavetype({
    required String token,
  }) = Getleavetype;
}
