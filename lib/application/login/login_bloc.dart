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
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          isVisible: false,
          loginresultData: null,
          isLogout: false));
    });

    on<Passwdvisible>((event, emit) {
      final currentStatevalue = state.isVisible;
      emit(LoginState(
          isLoading: false,
          isClientError: false,
          isServerError: false,
          isAuthError: false,
          isVisible: !currentStatevalue,
          loginresultData: null,
          isLogout: false));
    });

    on<Loginclick>((event, emit) async {
      emit(const LoginState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          isVisible: false,
          loginresultData: null,
          isLogout: false));
      final result = await _loginService.userLogin(
          username: event.username, password: event.password);
      final resultstate = result.fold(
        (MainFailure f) {
          if (f is ClientFailure) {
            return const LoginState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                isVisible: false,
                loginresultData: null,
                isLogout: false);
          } else {
            return const LoginState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                isVisible: false,
                loginresultData: null,
                isLogout: false);
          }
        },
        (LoginResponse response) {
          return LoginState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              isVisible: false,
              loginresultData: response,
              isLogout: false);
        },
      );
      emit(resultstate);
    });

    on<Logoutclick>(((event, emit) {
      emit(const LoginState(
          isLoading: false,
          isClientError: false,
          isServerError: false,
          isAuthError: false,
          isVisible: false,
          loginresultData: null,
          isLogout: true));
    }));

    on<RefreshKey>((event, emit) async {
      emit(const LoginState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          isVisible: false,
          loginresultData: null,
          isLogout: false));
      final result = await _loginService.refreshLogin(refreshkey: event.key);
      final resultstate = result.fold(
        (MainFailure f) {
          if (f is ClientFailure) {
            return const LoginState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                isVisible: false,
                loginresultData: null,
                isLogout: false);
          } else if (f is AuthFailure) {
            return const LoginState(
                isLoading: false,
                isServerError: false,
                isClientError: false,
                isAuthError: true,
                isVisible: false,
                loginresultData: null,
                isLogout: false);
          } else {
            return const LoginState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                isVisible: false,
                loginresultData: null,
                isLogout: false);
          }
        },
        (LoginResponse response) {
          return LoginState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              isVisible: false,
              loginresultData: response,
              isLogout: false);
        },
      );
      emit(resultstate);
    });
  }
}
