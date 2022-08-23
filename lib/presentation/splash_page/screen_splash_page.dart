import 'package:art_remoteapp/application/splash/splash_bloc.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_page/screen_home_page.dart';
import '../login_page/screen_login_page.dart';
import '../main_page/screen_main_page.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SplashBloc>(context).add(const Gotohome());
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const splashview();
            } else {
              var token = getsavedData();
              // if (token != null || token != '') {
              //   return ScreenMainPage();
              // } else {
              return const ScreenLoginPage();
              //return ScreenMainPage();
              // }
            }
          },
        ),
      ),
    );
  }
}

class splashview extends StatelessWidget {
  const splashview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo.png'),
        kHeight,
        const Text(
          'Welcome!\nRemote Art',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          'Version 1.0.0',
          style: TextStyle(fontSize: 8),
        ),
      ],
    );
  }
}

Future<String?> getsavedData() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  var token = sharedPrefs.getString('token');
  return token;
}
