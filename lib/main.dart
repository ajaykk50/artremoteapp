import 'package:art_remoteapp/domain/core/di/injectable.dart';
import 'package:art_remoteapp/presentation/splash_page/screen_splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/applyleave/applyleave_bloc.dart';
import 'application/helpdesk/helpdesk_bloc.dart';
import 'application/imageselection/image_selection_bloc.dart';
import 'application/login/login_bloc.dart';
import 'application/preference/preference_bloc.dart';
import 'application/punch/punch_bloc.dart';
import 'application/splash/splash_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => SplashBloc()),
        BlocProvider(create: (ctx) => getIt<LoginBloc>()),
        BlocProvider(create: (ctx) => getIt<PunchBloc>()),
        BlocProvider(create: (ctx) => PreferenceBloc()),
        BlocProvider(create: (ctx) => getIt<HelpdeskBloc>()),
        BlocProvider(create: (ctx) => ImageSelectionBloc()),
        BlocProvider(create: (ctx) => getIt<ApplyleaveBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
