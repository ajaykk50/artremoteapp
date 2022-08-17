part of 'punch_bloc.dart';

@freezed
class PunchState with _$PunchState {
  const factory PunchState(
      {required bool isLoading,
      required bool isError,
      required PunchResponse? punchresponse,
      required PunchingResponse? punchingresponse}) = _PunchState;

  factory PunchState.initial() => const PunchState(
      isLoading: false,
      isError: false,
      punchresponse: null,
      punchingresponse: null);
}
