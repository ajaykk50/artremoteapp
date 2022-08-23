import 'dart:developer';

import 'package:art_remoteapp/domain/core/api_end_points.dart';
import 'package:art_remoteapp/domain/noticeboard/model/notice_board_response/notice_board_response.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/noticeboard/notice_board_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NoticeBoardService)
class NoticeImpl extends NoticeBoardService {
  @override
  Future<Either<MainFailure, List<NoticeBoardResponse>>> getNotice(
      {required String token}) async {
    try {
      Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.noticeBoard,
        options: Options(headers: {"authorization": "Bearer $token"}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        if (response.data[0] == null) {
          if (response.data['message'] ==
              'Invalid or expired authorization token') {
            return const Left(MainFailure.serverFailure());
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
          final leaveresponse = (response.data as List).map((e) {
            return NoticeBoardResponse.fromJson(e);
          }).toList();

          log('worksss.......' + leaveresponse.toString());
          return Right(leaveresponse);
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
