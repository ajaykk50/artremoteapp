import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/punchinout/model/punch_response/punch_response.dart';
import 'package:dartz/dartz.dart';

import 'model/punching_response/punching_response.dart';

abstract class PunchService {
  Future<Either<MainFailure, PunchResponse>> punchDetails(String token);
  Future<Either<MainFailure, PunchingResponse>> punchClick(
      String token, String datetime, String comment);
}
