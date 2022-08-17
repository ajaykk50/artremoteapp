part of 'leave_type_bloc.dart';

@freezed
class LeaveTypeState with _$LeaveTypeState {
  const factory LeaveTypeState(
      {required bool isLoading,
      required bool isError,
      required List<LeaveTypeResponse> response}) = _LeaveTypeState;

  factory LeaveTypeState.initial() => const LeaveTypeState(
        isLoading: false,
        isError: false,
        response: [],
      );
}
