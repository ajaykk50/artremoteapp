part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required ProfileResponse? response,
      required ProfileResponse? updateresp}) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      isAuthError: false,
      response: null,
      updateresp: null);
}
