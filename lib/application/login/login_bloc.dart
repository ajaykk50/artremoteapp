import 'dart:developer';

import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
          loginresultData: null));
    });

    on<Passwdvisible>((event, emit) {
      final currentStatevalue = state.isVisible;
      emit(LoginState(
          isLoading: false,
          isError: false,
          isVisible: !currentStatevalue,
          loginresultData: null));
    });

    on<Loginclick>((event, emit) async {
      emit(const LoginState(
          isLoading: true,
          isError: false,
          isVisible: false,
          loginresultData: null));
      final _result = await _loginService.userLogin(
          username: event.username, password: event.password);
      final _state = _result.fold(
        (MainFailure f) {
          return const LoginState(
              isLoading: false,
              isError: true,
              isVisible: false,
              loginresultData: null);
        },
        (LoginResponse response) {
          return LoginState(
              isLoading: false,
              isError: true,
              isVisible: false,
              loginresultData: response);
        },
      );
      emit(_state);
    });
  }
}
