import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/punchinout/model/punch_response/punch_response.dart';
import 'package:art_remoteapp/domain/punchinout/punch_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          isClientError: false,
          isServerError: false,
          isAuthError: false,
          punchresponse: null,
          punchingresponse: null));
      final detailsresult = await _punchService.punchDetails(event.token);
      final detailsstate = detailsresult.fold((MainFailure f) {
        if (f is ClientFailure) {
          return const PunchState(
              isLoading: false,
              isClientError: true,
              isServerError: false,
              isAuthError: false,
              punchresponse: null,
              punchingresponse: null);
        } else if (f is ServerFailure) {
          return const PunchState(
              isLoading: false,
              isClientError: false,
              isServerError: true,
              isAuthError: false,
              punchresponse: null,
              punchingresponse: null);
        } else {
          return const PunchState(
              isLoading: false,
              isClientError: false,
              isServerError: false,
              isAuthError: true,
              punchresponse: null,
              punchingresponse: null);
        }
      }, (PunchResponse resp) {
        return PunchState(
            isLoading: false,
            isClientError: false,
            isServerError: false,
            isAuthError: false,
            punchresponse: resp,
            punchingresponse: null);
      });
      emit(detailsstate);
    });

    on<OnPunchClick>((event, emit) async {
      final punchresult = await _punchService.punchClick(
          event.token, event.datetime, event.comment);
      final punchstate = punchresult.fold((MainFailure f) {
        if (f is ClientFailure) {
          return const PunchState(
              isLoading: false,
              isClientError: true,
              isServerError: false,
              isAuthError: false,
              punchresponse: null,
              punchingresponse: null);
        } else if (f is ServerFailure) {
          return const PunchState(
              isLoading: false,
              isClientError: false,
              isServerError: true,
              isAuthError: false,
              punchresponse: null,
              punchingresponse: null);
        } else {
          return const PunchState(
              isLoading: false,
              isClientError: false,
              isServerError: false,
              isAuthError: true,
              punchresponse: null,
              punchingresponse: null);
        }
      }, (PunchingResponse resp) {
        return PunchState(
            isLoading: false,
            isServerError: false,
            isClientError: false,
            isAuthError: false,
            punchresponse: null,
            punchingresponse: resp);
      });
      emit(punchstate);
    });
  }
}
