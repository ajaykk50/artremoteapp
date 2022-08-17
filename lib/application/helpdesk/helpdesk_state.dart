part of 'helpdesk_bloc.dart';

@freezed
class HelpdeskState with _$HelpdeskState {
  const factory HelpdeskState(
      {required bool isLoading,
      required bool isError,
      required List<TopicResponse>? topicresponse,
      required XFile? filepath,
      required TopicResponse? helpresponse}) = _HelpdeskState;

  factory HelpdeskState.initial() => const HelpdeskState(
      isLoading: false,
      isError: false,
      topicresponse: [],
      filepath: null,
      helpresponse: null);
}
