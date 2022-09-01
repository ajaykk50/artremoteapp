import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/helpdesk/model/help_request_response/help_request_response.dart';
import 'package:art_remoteapp/domain/helpdesk/model/topic_response/topic_response.dart';
import 'package:art_remoteapp/domain/helpdesk/topic_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'helpdesk_event.dart';
part 'helpdesk_state.dart';
part 'helpdesk_bloc.freezed.dart';

@injectable
class HelpdeskBloc extends Bloc<HelpdeskEvent, HelpdeskState> {
  final TopicService _helpservice;

  HelpdeskBloc(this._helpservice) : super(HelpdeskState.initial()) {
    on<Gettopic>((event, emit) async {
      emit(const HelpdeskState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          topicresponse: [],
          filepath: null,
          helpresponse: null));
      final result =
          await _helpservice.helpTopic(token: event.token, id: event.id);

      final topicstate = result.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const HelpdeskState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                topicresponse: [],
                filepath: null,
                helpresponse: null);
          } else if (f is ClientFailure) {
            return const HelpdeskState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                topicresponse: [],
                filepath: null,
                helpresponse: null);
          } else {
            return const HelpdeskState(
                isLoading: false,
                isServerError: false,
                isClientError: false,
                isAuthError: true,
                topicresponse: [],
                filepath: null,
                helpresponse: null);
          }
        },
        (List<TopicResponse> resp) {
          return HelpdeskState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              topicresponse: resp,
              filepath: state.filepath,
              helpresponse: null);
        },
      );
      emit(topicstate);
    });

    on<Fetchimage>((event, emit) async {
      ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      emit(HelpdeskState(
          isLoading: false,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          topicresponse: state.topicresponse,
          filepath: image,
          helpresponse: null));
    });

    on<SendHelp>((event, emit) async {
      emit(HelpdeskState(
          isLoading: true,
          isServerError: false,
          isClientError: false,
          isAuthError: false,
          topicresponse: state.topicresponse,
          filepath: null,
          helpresponse: null));
      final result = await _helpservice.sendHelp(
          token: event.token,
          topicid: event.topic_id,
          subject: event.subject,
          cc: event.cc,
          content: event.content,
          files: event.files);

      final sendState = result.fold(
        (MainFailure f) {
          if (f is ServerFailure) {
            return const HelpdeskState(
                isLoading: false,
                isServerError: true,
                isClientError: false,
                isAuthError: false,
                topicresponse: [],
                filepath: null,
                helpresponse: null);
          } else if (f is ClientFailure) {
            return const HelpdeskState(
                isLoading: false,
                isServerError: false,
                isClientError: true,
                isAuthError: false,
                topicresponse: [],
                filepath: null,
                helpresponse: null);
          } else {
            return const HelpdeskState(
                isLoading: false,
                isServerError: false,
                isClientError: false,
                isAuthError: true,
                topicresponse: [],
                filepath: null,
                helpresponse: null);
          }
        },
        (HelpRequestResponse resp) {
          return HelpdeskState(
              isLoading: false,
              isServerError: false,
              isClientError: false,
              isAuthError: false,
              topicresponse: state.topicresponse,
              filepath: state.filepath,
              helpresponse: resp);
        },
      );
      emit(sendState);
    });
  }
}
