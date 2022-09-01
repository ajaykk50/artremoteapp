part of 'applyleave_bloc.dart';

@freezed
class ApplyleaveState with _$ApplyleaveState {
  const factory ApplyleaveState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required List<LeaveTypeResponse> leavetyperesponse,
      required LeaveApplyReponse? response}) = _Getleave;

  factory ApplyleaveState.initial() => const ApplyleaveState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      isAuthError: false,
      leavetyperesponse: [],
      response: null);
}
