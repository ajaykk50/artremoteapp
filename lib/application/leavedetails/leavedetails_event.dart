part of 'leavedetails_bloc.dart';

@freezed
class LeavedetailsEvent with _$LeavedetailsEvent {
  const factory LeavedetailsEvent.getleavecount({required String token}) =
      Getleavecount;
  const factory LeavedetailsEvent.getleavedetails(
      {required String token,
      required String fromdate,
      required String todate}) = Getleavedetails;
  const factory LeavedetailsEvent.deleteleave(
      {required String token, required String id}) = Deleteleave;
}
