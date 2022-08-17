import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'model/login_response/login_response.dart';

abstract class LoginService {
  Future<Either<MainFailure, LoginResponse>> userLogin(
      {required String username, required String password});
}
