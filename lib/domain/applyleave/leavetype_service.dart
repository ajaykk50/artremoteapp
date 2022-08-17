import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';

abstract class LeaveTypeService {
  Future<Either<MainFailure, List<LeaveTypeResponse>>> getLeaveType({
    required String token,
  });
}
