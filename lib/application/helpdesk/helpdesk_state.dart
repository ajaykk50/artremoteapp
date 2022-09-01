part of 'helpdesk_bloc.dart';

@freezed
class HelpdeskState with _$HelpdeskState {
  const factory HelpdeskState(
      {required bool isLoading,
      required bool isServerError,
      required bool isClientError,
      required bool isAuthError,
      required List<TopicResponse>? topicresponse,
      required XFile? filepath,
      required HelpRequestResponse? helpresponse}) = _HelpdeskState;

  factory HelpdeskState.initial() => const HelpdeskState(
      isLoading: false,
      isServerError: false,
      isClientError: false,
      isAuthError: false,
      topicresponse: [],
      filepath: null,
      helpresponse: null);
}
