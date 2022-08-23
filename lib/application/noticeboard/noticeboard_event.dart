part of 'noticeboard_bloc.dart';

@freezed
class NoticeboardEvent with _$NoticeboardEvent {
  const factory NoticeboardEvent.getnotice({required String token}) = Getnotice;
}
