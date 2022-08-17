part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({required bool isLoading, required bool isLoaded}) =
      _SplashState;
  factory SplashState.initial() =>
      SplashState(isLoading: false, isLoaded: false);
}
