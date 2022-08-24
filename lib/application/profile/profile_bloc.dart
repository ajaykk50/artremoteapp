import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/profile/model/profile_response/profile_response.dart';
import 'package:art_remoteapp/domain/profile/profile_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService profileservice;

  ProfileBloc(this.profileservice) : super(ProfileState.initial()) {
    on<Getprofile>((event, emit) async {
      emit(const ProfileState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          response: null,
          updateresp: null));
      final result = await profileservice.getProfile(token: event.token);
      final profilestate = result.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const ProfileState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                response: null,
                updateresp: null);
          } else {
            return const ProfileState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                response: null,
                updateresp: null);
          }
        },
        (ProfileResponse resp) {
          return ProfileState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              response: resp,
              updateresp: null);
        },
      );
      emit(profilestate);
    });

    on<Updateprofile>((event, emit) async {
      emit(const ProfileState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          response: null,
          updateresp: null));

      final result = await profileservice.updateProfile(
          token: event.token,
          mobile: event.mobile,
          workemail: event.workemail,
          othemail: event.othemail,
          emergencyno: event.emergencyno);
      final updatestate = result.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const ProfileState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                response: null,
                updateresp: null);
          } else {
            return const ProfileState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                response: null,
                updateresp: null);
          }
        },
        (ProfileResponse resp) {
          return ProfileState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              response: null,
              updateresp: resp);
        },
      );
      emit(updatestate);
    });

    on<Changepasswd>((event, emit) async {
      emit(const ProfileState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          response: null,
          updateresp: null));

      final result = await profileservice.changePasswd(
        token: event.token,
        currentpasswd: event.currentpasswd,
        newpasswd: event.newpasswd,
      );
      final passwdchangestate = result.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const ProfileState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                response: null,
                updateresp: null);
          } else {
            return const ProfileState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                response: null,
                updateresp: null);
          }
        },
        (ProfileResponse resp) {
          return ProfileState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              response: null,
              updateresp: resp);
        },
      );
      emit(passwdchangestate);
    });
  }
}
