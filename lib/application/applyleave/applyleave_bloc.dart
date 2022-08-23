import 'dart:developer';

import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/applyleave/leavetype_service.dart';

part 'applyleave_event.dart';
part 'applyleave_state.dart';
part 'applyleave_bloc.freezed.dart';

@injectable
class ApplyleaveBloc extends Bloc<ApplyleaveEvent, ApplyleaveState> {
  final LeaveTypeService leavetypeservice;

  ApplyleaveBloc(this.leavetypeservice) : super(ApplyleaveState.initial()) {
    on<Getleave>((event, emit) async {
      //log('cccccc');
      emit(const ApplyleaveState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          leavetyperesponse: [],
          response: []));
      final result = await leavetypeservice.getLeaveType(token: event.token);
      final applystate = result.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const ApplyleaveState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                leavetyperesponse: [],
                response: []);
          } else {
            return const ApplyleaveState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                leavetyperesponse: [],
                response: []);
          }
          // log('bbbbb');
          // return const ApplyleaveState(
          //     isLoading: false,
          //     isServerError: false,
          //     isClientError: true,
          //     leavetyperesponse: [],
          //     response: []);
        },
        (List<LeaveTypeResponse> resp) {
          log('dddd');
          return ApplyleaveState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              leavetyperesponse: resp,
              response: []);
        },
      );
      emit(applystate);
    });

    on<Submitleave>((event, emit) async {
      emit(ApplyleaveState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          leavetyperesponse: state.leavetyperesponse,
          response: []));

      final result = await leavetypeservice.applyLeave(
          token: event.token,
          ccMail: event.ccMail,
          comment: event.comment,
          dates: event.dates,
          leaveType: event.leaveType,
          leaveDuration: event.leaveDuration);

      final applystate =
          result.fold((MainFailure f) {}, (List<LeaveTypeResponse> resp) {});
    });
  }
}
