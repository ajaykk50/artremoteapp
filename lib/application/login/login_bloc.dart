import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/login/model/login_response/login_response.dart';
import '../../domain/login/login_service.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService _loginService;

  LoginBloc(this._loginService) : super(LoginState.initial()) {
    on<Initialize>((event, emit) {
      emit(const LoginState(
          isLoading: false,
          isError: false,
          isVisible: false,
          loginresultData: null,
          isLogout: false));
    });

    on<Passwdvisible>((event, emit) {
      final currentStatevalue = state.isVisible;
      emit(LoginState(
          isLoading: false,
          isError: false,
          isVisible: !currentStatevalue,
          loginresultData: null,
          isLogout: false));
    });

    on<Loginclick>((event, emit) async {
      emit(const LoginState(
          isLoading: true,
          isError: false,
          isVisible: false,
          loginresultData: null,
          isLogout: false));
      final _result = await _loginService.userLogin(
          username: event.username, password: event.password);
      final _state = _result.fold(
        (MainFailure f) {
          if (f is ClientFailure) {
            print("aaaaasssssddddddd");
          }
          if (f is ServerFailure) {
            print("aaaaasssssddfffffrrrrrddddddd");
          }
          // print("aaaaasssssddddddd");
          return const LoginState(
              isLoading: false,
              isError: true,
              isVisible: false,
              loginresultData: null,
              isLogout: false);
        },
        (LoginResponse response) {
          return LoginState(
              isLoading: false,
              isError: false,
              isVisible: false,
              loginresultData: response,
              isLogout: false);
        },
      );
      emit(_state);
    });

    on<Logoutclick>(((event, emit) {
      emit(const LoginState(
          isLoading: false,
          isError: true,
          isVisible: false,
          loginresultData: null,
          isLogout: true));
    }));
  }
}
