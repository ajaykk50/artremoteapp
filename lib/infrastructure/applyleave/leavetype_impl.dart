import 'dart:convert';
import 'dart:developer';

import 'package:art_remoteapp/domain/applyleave/leavetype_service.dart';
import 'package:dartz/dartz.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: LeaveTypeService)
class LeaveTypeImpl extends LeaveTypeService {
  @override
  Future<Either<MainFailure, List<LeaveTypeResponse>>> getLeaveType(
      {required String token}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.leavetype,
        options: Options(headers: {"authorization": "Bearer $token"}),
      );
      List<LeaveTypeResponse> _list = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data[0] == null) {
          if (response.data['message'] ==
              'Invalid or expired authorization token') {
            return const Left(MainFailure.serverFailure());
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
          final leaveresponse = (response.data as List).map((e) {
            return LeaveTypeResponse.fromJson(e);
          }).toList();
          return Right(leaveresponse);
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
