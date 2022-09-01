import 'dart:convert';
import 'dart:developer';

import 'package:art_remoteapp/domain/profile/model/profile_response/profile_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/profile/profile_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: ProfileService)
class ProfileImpl extends ProfileService {
  @override
  Future<Either<MainFailure, ProfileResponse>> getProfile(
      {required String token}) async {
    try {
      Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.profile,
        options: Options(headers: {"authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        // log(response.data.toString());

        if (response.data['message'] == null) {
          //log(response.data.toString());
          final result = ProfileResponse.fromJson(response.data);
          return Right(result);
        } else if (response.data['message'] ==
            'Invalid or expired authorization token') {
          return const Left(MainFailure.serverFailure());
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
    //throw UnimplementedError();
  }

  @override
  Future<Either<MainFailure, ProfileResponse>> updateProfile({
    required String token,
    required String mobile,
    required String workemail,
    required String othemail,
    required String emergencyno,
  }) async {
    try {
      var params = {
        "emp_mobile": mobile,
        "emp_work_email": workemail,
        "emp_oth_email": othemail,
        "emergency_no": emergencyno,
      };

      Response response = await Dio(BaseOptions()).post(
        ApiEndPoints.profile,
        options: Options(headers: {"authorization": "Bearer $token"}),
        data: jsonEncode(params),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ProfileResponse.fromJson(response.data);

        if (result.status == 'Error') {
          if (result.message == 'Invalid or expired authorization token') {
            return const Left(MainFailure.authFailure());
          } else {
            return Right(result);
          }
        } else {
          return Right(result);
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, ProfileResponse>> changePasswd({
    required String token,
    required String currentpasswd,
    required String newpasswd,
  }) async {
    try {
      var params = {
        "curr_password": currentpasswd,
        "new_password": newpasswd,
      };
      Response response = await Dio(BaseOptions()).post(
        ApiEndPoints.changepasswd,
        options: Options(headers: {"authorization": "Bearer $token"}),
        data: jsonEncode(params),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data['message'] == null) {
          final result = ProfileResponse.fromJson(response.data);
          return Right(result);
        } else if (response.data['message'] ==
            'Invalid or expired authorization token') {
          return const Left(MainFailure.authFailure());
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
