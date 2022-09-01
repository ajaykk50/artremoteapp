import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:art_remoteapp/domain/core/api_end_points.dart';
import 'package:art_remoteapp/domain/login/model/login_response/login_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/login/login_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoginService)
class LoginImpl implements LoginService {
  @override
  Future<Either<MainFailure, LoginResponse>> userLogin(
      {required String username, required String password}) async {
    try {
      var params = {
        "username": username,
        "password": password,
      };
      final Response response = await Dio(BaseOptions()).post(
        ApiEndPoints.login,
        options: Options(
            headers: {HttpHeaders.connectionHeader: "application/json"}),
        data: jsonEncode(params),
      );
      log('response...${response.data.toString()}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      //  SystemChannels.platform.invokeMethod('SystemNavigator.pop');

      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LoginResponse>> refreshLogin(
      {required String refreshkey}) async {
    try {
      var params = {
        "refreshToken": "Bearer $refreshkey",
      };
      final Response response = await Dio(BaseOptions()).post(
        ApiEndPoints.refresh,
        options: Options(headers: {"authorization": "Bearer $refreshkey"}),
        data: jsonEncode(params),
      );
      log('refresh.......${response.data.toString()}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      //  SystemChannels.platform.invokeMethod('SystemNavigator.pop');

      return const Left(MainFailure.clientFailure());
    }
  }
}
