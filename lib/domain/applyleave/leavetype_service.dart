import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';

import 'model/leave_apply_reponse/leave_apply_reponse.dart';

abstract class LeaveTypeService {
  Future<Either<MainFailure, List<LeaveTypeResponse>>> getLeaveType(
      {required String token});
  Future<Either<MainFailure, LeaveApplyReponse>> applyLeave(
      {required String token,
      required String ccMail,
      required String comment,
      required List<DateTime> dates,
      required String leaveType,
      required String leaveDuration});
}
