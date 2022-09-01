import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/noticeboard/model/notice_board_response/notice_board_response.dart';
import 'package:art_remoteapp/domain/noticeboard/notice_board_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'noticeboard_event.dart';
part 'noticeboard_state.dart';
part 'noticeboard_bloc.freezed.dart';

@injectable
class NoticeboardBloc extends Bloc<NoticeboardEvent, NoticeboardState> {
  NoticeBoardService noticeboardservice;

  NoticeboardBloc(this.noticeboardservice) : super(NoticeboardState.initial()) {
    on<Getnotice>((event, emit) async {
      emit(const NoticeboardState(
        isLoading: true,
        isServerError: false,
        isClientError: false,
        isAuthError: false,
        response: [],
      ));
      final noticeresp = await noticeboardservice.getNotice(token: event.token);
      final noticestate = noticeresp.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const NoticeboardState(
              isLoading: false,
              isServerError: true,
              isClientError: false,
              isAuthError: false,
              response: [],
            );
          } else if (f is ClientFailure) {
            return const NoticeboardState(
              isLoading: false,
              isServerError: false,
              isClientError: true,
              isAuthError: false,
              response: [],
            );
          } else if (f is AuthFailure) {
            return const NoticeboardState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: true,
              response: [],
            );
          } else {
            return const NoticeboardState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: true,
              response: [],
            );
          }
        },
        (List<NoticeBoardResponse> resp) {
          return NoticeboardState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            response: resp,
          );
        },
      );
      emit(noticestate);
    });
  }
}
