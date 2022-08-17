part of 'helpdesk_bloc.dart';

@freezed
class HelpdeskEvent with _$HelpdeskEvent {
  const factory HelpdeskEvent.gettopic(
      {required String token, required String id}) = Gettopic;

  const factory HelpdeskEvent.fetchimage() = Fetchimage;

  const factory HelpdeskEvent.sendHelp({
    required String token,
    required String topic_id,
    required String subject,
    required String cc,
    required String content,
    required String files,
  }) = SendHelp;
}
