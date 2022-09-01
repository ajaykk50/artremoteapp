part of 'punch_bloc.dart';

@freezed
class PunchState with _$PunchState {
  const factory PunchState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required PunchResponse? punchresponse,
      required PunchingResponse? punchingresponse}) = _PunchState;

  factory PunchState.initial() => const PunchState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      isAuthError: false,
      punchresponse: null,
      punchingresponse: null);
}
