import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/helpdesk/model/help_request_response/help_request_response.dart';
import 'package:art_remoteapp/domain/helpdesk/model/topic_response/topic_response.dart';
import 'package:dartz/dartz.dart';

abstract class TopicService {
  Future<Either<MainFailure, List<TopicResponse>>> helpTopic(
      {required String token, required String id});

  Future<Either<MainFailure, HelpRequestResponse>> sendHelp(
      {required String token,
      required String topicid,
      required String subject,
      required String cc,
      required String content,
      required String files});
}
