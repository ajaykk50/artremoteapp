part of 'preference_bloc.dart';

@freezed
class PreferenceState with _$PreferenceState {
  const factory PreferenceState({required String token}) = _PreferenceState;

  factory PreferenceState.initial() => const PreferenceState(token: "");
}
