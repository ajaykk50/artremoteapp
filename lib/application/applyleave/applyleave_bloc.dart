import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/applyleave/leavetype_service.dart';

part 'applyleave_event.dart';
part 'applyleave_state.dart';
part 'applyleave_bloc.freezed.dart';

class ApplyleaveBloc extends Bloc<ApplyleaveEvent, ApplyleaveState> {
  final LeaveTypeService leavetypeservice;

  ApplyleaveBloc(this.leavetypeservice) : super(ApplyleaveState.initial()) {
    on<_Getleave>((event, emit) async {
      emit(const ApplyleaveState.getleave(
          isLoading: true,
          isError: false,
          leavetyperesponse: [],
          response: []));
      final result = await leavetypeservice.getLeaveType(token: event.token);
      final applystate = result.fold(
        (MainFailure f) {
          const ApplyleaveState.getleave(
              isLoading: false,
              isError: true,
              leavetyperesponse: [],
              response: []);
        },
        (List<LeaveTypeResponse> resp) {
          ApplyleaveState.getleave(
              isLoading: false,
              isError: true,
              leavetyperesponse: state.leavetyperesponse,
              response: resp);
        },
      );
      emit(applystate);
    });
  }
}
