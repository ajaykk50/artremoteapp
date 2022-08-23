// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/applyleave/applyleave_bloc.dart' as _i12;
import '../../../application/helpdesk/helpdesk_bloc.dart' as _i13;
import '../../../application/login/login_bloc.dart' as _i14;
import '../../../application/punch/punch_bloc.dart' as _i15;
import '../../../application/splash/splash_bloc.dart' as _i9;
import '../../../infrastructure/applyleave/leavetype_impl.dart' as _i4;
import '../../../infrastructure/helpdesk/topic_impl.dart' as _i11;
import '../../../infrastructure/login/login_impl.dart' as _i6;
import '../../../infrastructure/punch/punch_impl.dart' as _i8;
import '../../applyleave/leavetype_service.dart' as _i3;
import '../../helpdesk/topic_service.dart' as _i10;
import '../../login/login_service.dart' as _i5;
import '../../punchinout/punch_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.LeaveTypeService>(() => _i4.LeaveTypeImpl());
  gh.lazySingleton<_i5.LoginService>(() => _i6.LoginImpl());
  gh.lazySingleton<_i7.PunchService>(() => _i8.PunchImpl());
  gh.factory<_i9.SplashBloc>(() => _i9.SplashBloc());
  gh.lazySingleton<_i10.TopicService>(() => _i11.TopicImpl());
  gh.factory<_i12.ApplyleaveBloc>(
      () => _i12.ApplyleaveBloc(get<_i3.LeaveTypeService>()));
  gh.factory<_i13.HelpdeskBloc>(
      () => _i13.HelpdeskBloc(get<_i10.TopicService>()));
  gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(get<_i5.LoginService>()));
  gh.factory<_i15.PunchBloc>(() => _i15.PunchBloc(get<_i7.PunchService>()));
  return get;
}
