import 'package:art_remoteapp/application/login/login_bloc.dart';
import 'package:art_remoteapp/application/splash/splash_bloc.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/punchinout/model/punch_response/punch_response.dart';
import 'package:art_remoteapp/domain/punchinout/punch_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/punchinout/model/punching_response/punching_response.dart';

part 'punch_event.dart';
part 'punch_state.dart';
part 'punch_bloc.freezed.dart';

@injectable
class PunchBloc extends Bloc<PunchEvent, PunchState> {
  final PunchService _punchService;

  PunchBloc(this._punchService) : super(PunchState.initial()) {
    on<PunchDetails>((event, emit) async {
      emit(const PunchState(
          isLoading: true,
          isError: false,
          punchresponse: null,
          punchingresponse: null));
      final _result = await _punchService.punchDetails(event.token);
      final _state = _result.fold((MainFailure f) {
        return const PunchState(
            isLoading: false,
            isError: true,
            punchresponse: null,
            punchingresponse: null);
      }, (PunchResponse resp) {
        return PunchState(
            isLoading: false,
            isError: false,
            punchresponse: resp,
            punchingresponse: null);
      });
      emit(_state);
    });

    on<OnPunchClick>((event, emit) async {
      final _result = await _punchService.punchClick(
          event.token, event.datetime, event.comment);
      final _state = _result.fold((MainFailure f) {
        return const PunchState(
            isLoading: false,
            isError: true,
            punchresponse: null,
            punchingresponse: null);
      }, (PunchingResponse resp) {
        return PunchState(
            isLoading: false,
            isError: false,
            punchresponse: null,
            punchingresponse: resp);
      });
      emit(_state);
    });
  }
}
