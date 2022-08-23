// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/applyleave/applyleave_bloc.dart' as _i15;
import '../../../application/helpdesk/helpdesk_bloc.dart' as _i16;
import '../../../application/login/login_bloc.dart' as _i17;
import '../../../application/noticeboard/noticeboard_bloc.dart' as _i9;
import '../../../application/punch/punch_bloc.dart' as _i18;
import '../../../application/splash/splash_bloc.dart' as _i12;
import '../../../infrastructure/applyleave/leavetype_impl.dart' as _i4;
import '../../../infrastructure/helpdesk/topic_impl.dart' as _i14;
import '../../../infrastructure/login/login_impl.dart' as _i6;
import '../../../infrastructure/noticeboard/notice_impl.dart' as _i8;
import '../../../infrastructure/punch/punch_impl.dart' as _i11;
import '../../applyleave/leavetype_service.dart' as _i3;
import '../../helpdesk/topic_service.dart' as _i13;
import '../../login/login_service.dart' as _i5;
import '../../noticeboard/notice_board_service.dart' as _i7;
import '../../punchinout/punch_service.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.LeaveTypeService>(() => _i4.LeaveTypeImpl());
  gh.lazySingleton<_i5.LoginService>(() => _i6.LoginImpl());
  gh.lazySingleton<_i7.NoticeBoardService>(() => _i8.NoticeImpl());
  gh.factory<_i9.NoticeboardBloc>(
      () => _i9.NoticeboardBloc(get<_i7.NoticeBoardService>()));
  gh.lazySingleton<_i10.PunchService>(() => _i11.PunchImpl());
  gh.factory<_i12.SplashBloc>(() => _i12.SplashBloc());
  gh.lazySingleton<_i13.TopicService>(() => _i14.TopicImpl());
  gh.factory<_i15.ApplyleaveBloc>(
      () => _i15.ApplyleaveBloc(get<_i3.LeaveTypeService>()));
  gh.factory<_i16.HelpdeskBloc>(
      () => _i16.HelpdeskBloc(get<_i13.TopicService>()));
  gh.factory<_i17.LoginBloc>(() => _i17.LoginBloc(get<_i5.LoginService>()));
  gh.factory<_i18.PunchBloc>(() => _i18.PunchBloc(get<_i10.PunchService>()));
  return get;
}
