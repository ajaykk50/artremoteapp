import 'dart:convert';
import 'dart:developer';

import 'package:art_remoteapp/domain/helpdesk/model/topic_response/topic_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/helpdesk/topic_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/helpdesk/model/help_request_response/help_request_response.dart';

@LazySingleton(as: TopicService)
class TopicImpl extends TopicService {
  @override
  Future<Either<MainFailure, List<TopicResponse>>> helpTopic(
      {required String token, required String id}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.helptopic + id,
        options: Options(
            headers: {"authorization": "Bearer $token"},
            responseType: ResponseType.json),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data[0].toString());
        var pdfText = await json.decode(json.encode(response.data));

        // var data = response.data[0];
        // final downloadslist = (data[0] as List).map((e) {
        //   return TopicResponse.fromJson(e);
        // }).toList();
        // List<TopicResponse> list = jsonDecode(response.data[0].toString());
        // final result = TopicResponse.fromJson(response.data[0]);

        final downloadslist = (pdfText[0] as List).map((e) {
          return TopicResponse.fromJson(e);
        }).toList();
        //log(downloadslist[1].topicName.toString());
        return Right(downloadslist);
      } else {
        // print('aaaaaaaaaakkkkkkk');

        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      // log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HelpRequestResponse>> sendHelp({
    required String token,
    required String topicid,
    required String subject,
    required String cc,
    required String content,
    required String files,
  }) async {
    try {
      var params = {
        "topic_id": topicid,
        "subject": subject,
        "cc": cc,
        "content": content,
        "files": files,
      };

      // log("params" + params.toString());
      // FormData formData = FormData.fromMap({
      //   "file": await MultipartFile.fromFile(files, filename: "fileName"),
      // });
      final Response response = await Dio(BaseOptions()).post(
        ApiEndPoints.sendhelp,
        options: Options(headers: {"authorization": "Bearer $token"}),
        data: params,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HelpRequestResponse.fromJson(response.data);
        if (result.status == 'Error') {
          if (result.message == 'Invalid or expired authorization token') {
            return const Left(MainFailure.authFailure());
          } else {
            return Right(result);
          }
        } else {
          log('success');
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
