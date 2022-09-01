import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:art_remoteapp/domain/core/api_end_points.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/leavedetails/leavedetails_service.dart';
import 'package:dartz/dartz.dart';
import 'package:art_remoteapp/domain/leavedetails/models/leavecount_response/leavecount_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/leavedetails/models/leavedetails_response/leavedetails_response.dart';

@LazySingleton(as: LeaveDetailsService)
class LeaveDetailsImpl extends LeaveDetailsService {
  @override
  Future<Either<MainFailure, List<LeavecountResponse>>> getLeavecount(
      {required String token}) async {
    try {
      Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.leavedetails,
        options: Options(headers: {"authorization": "Bearer $token"}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log("aaaaaaa" + response.data.toString());
        if (response.data[0] == null) {
          if (response.data['message'] ==
              'Invalid or expired authorization token') {
            return const Left(MainFailure.serverFailure());
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
          print('aaaaddddddffff');
          final leaveresponse = (response.data as List).map((e) {
            return LeavecountResponse.fromJson(e);
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

  @override
  Future<Either<MainFailure, LeavedetailsResponse>> getLeavedetails({
    required String token,
    required String fromdate,
    required String todate,
  }) async {
    try {
      Response response = await Dio(BaseOptions()).get(
        '${ApiEndPoints.leavestaken}/$fromdate/$todate',
        options: Options(headers: {"authorization": "Bearer $token"}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        if (response.data['message'] != null) {
          if (response.data['message'] ==
              'Invalid or expired authorization token') {
            return const Left(MainFailure.serverFailure());
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
          final result = LeavedetailsResponse.fromJson(response.data);
          return Right(result);
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LeavecountResponse>> deleteLeave(
      {required String token, required String leaveId}) async {
    try {
      var params = {
        "id": leaveId,
      };
      Response response = await Dio(BaseOptions()).post(
          ApiEndPoints.leavecancel,
          options: Options(headers: {"authorization": "Bearer $token"}),
          data: jsonEncode(params));

      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        if (response.data['message'] != null) {
          if (response.data['message'] ==
              'Invalid or expired authorization token') {
            return const Left(MainFailure.serverFailure());
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
          final result = LeavecountResponse.fromJson(response.data);
          return Right(result);
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
