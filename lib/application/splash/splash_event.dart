part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initialize() = Initialize;
  const factory SplashEvent.gotohome() = Gotohome;
}
