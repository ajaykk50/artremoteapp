import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/leavedetails/models/leavecount_response/leavecount_response.dart';
import 'package:art_remoteapp/domain/leavedetails/models/leavedetails_response/leavedetails_response.dart';
import 'package:dartz/dartz.dart';

abstract class LeaveDetailsService {
  Future<Either<MainFailure, List<LeavecountResponse>>> getLeavecount(
      {required String token});

  Future<Either<MainFailure, LeavedetailsResponse>> getLeavedetails(
      {required String token,
      required String fromdate,
      required String todate});

  Future<Either<MainFailure, LeavecountResponse>> deleteLeave(
      {required String token, required String leaveId});
}
