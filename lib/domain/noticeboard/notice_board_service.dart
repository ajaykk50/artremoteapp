import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/noticeboard/model/notice_board_response/notice_board_response.dart';
import 'package:dartz/dartz.dart';

abstract class NoticeBoardService {
  Future<Either<MainFailure, List<NoticeBoardResponse>>> getNotice(
      {required String token});
}
