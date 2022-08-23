part of 'noticeboard_bloc.dart';

@freezed
class NoticeboardState with _$NoticeboardState {
  const factory NoticeboardState({
    required bool isLoading,
    required bool isServerError,
    required bool isClientError,
    required List<NoticeBoardResponse> response,
  }) = _NoticeboardState;

  factory NoticeboardState.initial() => const NoticeboardState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      response: []);
}
