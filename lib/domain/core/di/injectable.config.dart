// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/applyleave/applyleave_bloc.dart' as _i20;
import '../../../application/helpdesk/helpdesk_bloc.dart' as _i21;
import '../../../application/leavedetails/leavedetails_bloc.dart' as _i7;
import '../../../application/login/login_bloc.dart' as _i22;
import '../../../application/noticeboard/noticeboard_bloc.dart' as _i12;
import '../../../application/profile/profile_bloc.dart' as _i23;
import '../../../application/punch/punch_bloc.dart' as _i24;
import '../../../application/splash/splash_bloc.dart' as _i17;
import '../../../infrastructure/applyleave/leavetype_impl.dart' as _i6;
import '../../../infrastructure/helpdesk/topic_impl.dart' as _i19;
import '../../../infrastructure/leavedetails/leavedetails_impl.dart' as _i4;
import '../../../infrastructure/login/login_impl.dart' as _i9;
import '../../../infrastructure/noticeboard/notice_impl.dart' as _i11;
import '../../../infrastructure/profile/profile_impl.dart' as _i14;
import '../../../infrastructure/punch/punch_impl.dart' as _i16;
import '../../applyleave/leavetype_service.dart' as _i5;
import '../../helpdesk/topic_service.dart' as _i18;
import '../../leavedetails/leavedetails_service.dart' as _i3;
import '../../login/login_service.dart' as _i8;
import '../../noticeboard/notice_board_service.dart' as _i10;
import '../../profile/profile_service.dart' as _i13;
import '../../punchinout/punch_service.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.LeaveDetailsService>(() => _i4.LeaveDetailsImpl());
  gh.lazySingleton<_i5.LeaveTypeService>(() => _i6.LeaveTypeImpl());
  gh.factory<_i7.LeavedetailsBloc>(
      () => _i7.LeavedetailsBloc(get<_i3.LeaveDetailsService>()));
  gh.lazySingleton<_i8.LoginService>(() => _i9.LoginImpl());
  gh.lazySingleton<_i10.NoticeBoardService>(() => _i11.NoticeImpl());
  gh.factory<_i12.NoticeboardBloc>(
      () => _i12.NoticeboardBloc(get<_i10.NoticeBoardService>()));
  gh.lazySingleton<_i13.ProfileService>(() => _i14.ProfileImpl());
  gh.lazySingleton<_i15.PunchService>(() => _i16.PunchImpl());
  gh.factory<_i17.SplashBloc>(() => _i17.SplashBloc());
  gh.lazySingleton<_i18.TopicService>(() => _i19.TopicImpl());
  gh.factory<_i20.ApplyleaveBloc>(
      () => _i20.ApplyleaveBloc(get<_i5.LeaveTypeService>()));
  gh.factory<_i21.HelpdeskBloc>(
      () => _i21.HelpdeskBloc(get<_i18.TopicService>()));
  gh.factory<_i22.LoginBloc>(() => _i22.LoginBloc(get<_i8.LoginService>()));
  gh.factory<_i23.ProfileBloc>(
      () => _i23.ProfileBloc(get<_i13.ProfileService>()));
  gh.factory<_i24.PunchBloc>(() => _i24.PunchBloc(get<_i15.PunchService>()));
  return get;
}
