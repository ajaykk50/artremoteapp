part of 'applyleave_bloc.dart';

@freezed
class ApplyleaveState with _$ApplyleaveState {
  const factory ApplyleaveState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required List<LeaveTypeResponse> leavetyperesponse,
      required List<LeaveTypeResponse> response}) = _Getleave;

  factory ApplyleaveState.initial() => const ApplyleaveState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      leavetyperesponse: [],
      response: []);
}
