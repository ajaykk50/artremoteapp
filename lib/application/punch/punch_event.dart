part of 'punch_bloc.dart';

@freezed
class PunchEvent with _$PunchEvent {
  const factory PunchEvent.punchDetails({required String token}) = PunchDetails;
  const factory PunchEvent.onPunchClick(
      {required String token,
      required String datetime,
      required String comment}) = OnPunchClick;
}
