import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/leavedetails/leavedetails_service.dart';
import 'package:art_remoteapp/domain/leavedetails/models/leavecount_response/leavecount_response.dart';
import 'package:art_remoteapp/domain/leavedetails/models/leavedetails_response/leavedetails_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'leavedetails_event.dart';
part 'leavedetails_state.dart';
part 'leavedetails_bloc.freezed.dart';

@injectable
class LeavedetailsBloc extends Bloc<LeavedetailsEvent, LeavedetailsState> {
  final LeaveDetailsService leavedetailsservice;

  LeavedetailsBloc(this.leavedetailsservice)
      : super(LeavedetailsState.initial()) {
    on<Getleavecount>((event, emit) async {
      emit(const LeavedetailsState(
          isLoading: true,
          isServerError: false,
          isAuthError: false,
          isClientError: false,
          countresp: [],
          detailsresp: null,
          removeresp: null));

      final leavecount =
          await leavedetailsservice.getLeavecount(token: event.token);
      final leavecountstate = leavecount.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          } else if (f is AuthFailure) {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: false,
                isClientError: false,
                isAuthError: true,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          } else {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          }
        },
        (List<LeavecountResponse> resp) {
          return LeavedetailsState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              countresp: resp,
              detailsresp: state.detailsresp,
              removeresp: null);
        },
      );
      emit(leavecountstate);
    });

    on<Getleavedetails>((event, emit) async {
      emit(const LeavedetailsState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          countresp: [],
          detailsresp: null,
          removeresp: null));

      final leavedetails = await leavedetailsservice.getLeavedetails(
          token: event.token, fromdate: event.fromdate, todate: event.todate);
      final leavedetailsstate = leavedetails.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          } else if (f is AuthFailure) {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: false,
                isClientError: false,
                isAuthError: true,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          } else {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          }
        },
        (LeavedetailsResponse resp) {
          return LeavedetailsState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              countresp: state.countresp,
              detailsresp: resp,
              removeresp: null);
        },
      );
      emit(leavedetailsstate);
    });

    on<Deleteleave>((event, emit) async {
      emit(const LeavedetailsState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          countresp: [],
          detailsresp: null,
          removeresp: null));

      final leavedelete = await leavedetailsservice.deleteLeave(
          token: event.token, leaveId: event.id);
      final leavedetailsstate = leavedelete.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          } else if (f is AuthFailure) {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: false,
                isClientError: false,
                isAuthError: true,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          } else {
            return const LeavedetailsState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                countresp: [],
                detailsresp: null,
                removeresp: null);
          }
        },
        (LeavecountResponse resp) {
          return LeavedetailsState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              countresp: state.countresp,
              detailsresp: state.detailsresp,
              removeresp: resp);
        },
      );
      emit(leavedetailsstate);
    });
  }
}
