part of 'applyleave_bloc.dart';

@freezed
class ApplyleaveState with _$ApplyleaveState {
  const factory ApplyleaveState.getleave(
      {required bool isLoading,
      required bool isError,
      required List<LeaveTypeResponse> leavetyperesponse,
      required List<LeaveTypeResponse> response}) = Getleave;

  factory ApplyleaveState.initial() => const ApplyleaveState.getleave(
      isLoading: false, isError: false, leavetyperesponse: [], response: []);
}
