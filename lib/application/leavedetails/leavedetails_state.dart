part of 'leavedetails_bloc.dart';

@freezed
class LeavedetailsState with _$LeavedetailsState {
  const factory LeavedetailsState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required List<LeavecountResponse> countresp,
      required LeavedetailsResponse? detailsresp,
      required LeavecountResponse? removeresp}) = _LeavedetailsState;

  factory LeavedetailsState.initial() => const LeavedetailsState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      isAuthError: false,
      countresp: [],
      detailsresp: null,
      removeresp: null);
}
