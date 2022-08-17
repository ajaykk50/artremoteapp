import 'package:art_remoteapp/domain/applyleave/leavetype_service.dart';
import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures/main_failure.dart';

part 'leave_type_event.dart';
part 'leave_type_state.dart';
part 'leave_type_bloc.freezed.dart';

@injectable
class LeaveTypeBloc extends Bloc<LeaveTypeEvent, LeaveTypeState> {
  final LeaveTypeService leavetypeservice;

  LeaveTypeBloc(this.leavetypeservice) : super(LeaveTypeState.initial()) {
    on<LeaveTypeEvent>((event, emit) async {
      emit(const LeaveTypeState(isLoading: true, isError: false, response: []));

      final result = await leavetypeservice.getLeaveType(token: event.token);
      final state = result.fold(
        (MainFailure f) {
          const LeaveTypeState(
            isLoading: false,
            isError: true,
            response: [],
          );
        },
        (List<LeaveTypeResponse> resp) {
          LeaveTypeState(
            isLoading: false,
            isError: true,
            response: resp,
          );
        },
      );
    });
  }
}
