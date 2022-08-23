part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initialize() = Initialize;
  const factory LoginEvent.passwdvisible() = Passwdvisible;
  const factory LoginEvent.loginclick(
      {required String username, required String password}) = Loginclick;

  const factory LoginEvent.logoutclick() = Logoutclick;
}
