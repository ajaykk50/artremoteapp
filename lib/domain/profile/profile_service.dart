import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/profile/model/profile_response/profile_response.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileService {
  Future<Either<MainFailure, ProfileResponse>> getProfile(
      {required String token});

  Future<Either<MainFailure, ProfileResponse>> updateProfile(
      {required String token,
      required String mobile,
      required String workemail,
      required String othemail,
      required String emergencyno});

  Future<Either<MainFailure, ProfileResponse>> changePasswd({
    required String token,
    required String currentpasswd,
    required String newpasswd,
  });
}
