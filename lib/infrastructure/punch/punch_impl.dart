import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:art_remoteapp/domain/punchinout/model/punch_response/punch_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/punchinout/punch_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/punchinout/model/punching_response/punching_response.dart';

@LazySingleton(as: PunchService)
class PunchImpl implements PunchService {
  @override
  Future<Either<MainFailure, PunchResponse>> punchDetails(String token) async {
    try {
      log('token...${token}');
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.punchdetails,
        options: Options(headers: {"authorization": "Bearer $token"}),
      );
      log('response...${response.data}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = PunchResponse.fromJson(response.data);
        if (result.status.toString() == 'Error') {
          if (result.message.toString() ==
              'Invalid or expired authorization token') {
            log('auth error');
            return const Left(MainFailure.authFailure());
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
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
  Future<Either<MainFailure, PunchingResponse>> punchClick(
      String token, String datetime, String comment) async {
    try {
      var params = {
        "userTime": datetime,
        "note": comment,
      };

      log('token...${token}');
      final Response response = await Dio(BaseOptions()).post(
        ApiEndPoints.punchdetails,
        options: Options(headers: {"authorization": "Bearer $token"}),
        data: jsonEncode(params),
      );
      log('response...${response.data}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = PunchingResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
