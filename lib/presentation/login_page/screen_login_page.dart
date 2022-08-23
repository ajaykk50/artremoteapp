import 'dart:developer';
import 'dart:ffi';

import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/domain/core/failures/main_failure.dart';
import 'package:art_remoteapp/domain/login/model/login_response/login_response.dart';
import 'package:art_remoteapp/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/login/login_bloc.dart';
import '../../core/sessionmanager.dart';

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class ScreenLoginPage extends StatelessWidget {
  const ScreenLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<LoginBloc>(context).add(const Initialize());
    });
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        print(state);

        return Scaffold(
          body: SafeArea(
              child: Container(
            color: backgroundGreyColor,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(30),
                children: [
                  Image.asset('assets/images/logo.png'),
                  TextFormField(
                    controller: username,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                        fillColor: kWhite,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.person_outline_rounded,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.all(0),
                        hintText: 'username'),
                  ),
                  kHeight,
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return TextFormField(
                        controller: password,
                        obscureText: !(state.isVisible),
                        style: const TextStyle(fontSize: kFontsize),
                        decoration: InputDecoration(
                            fillColor: kWhite,
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.password_rounded,
                              color: Colors.grey,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                BlocProvider.of<LoginBloc>(context)
                                    .add(const Passwdvisible());
                              },
                              icon: Icon(Icons.visibility),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.all(0),
                            hintText: 'password'),
                      );
                    },
                  ),
                  kHeight,
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        );
                      } else if (state.loginresultData?.status == "Success") {
                        Future.delayed(Duration.zero, () {
                          BlocProvider.of<LoginBloc>(context)
                              .add(const Logoutclick());

                          SessionManager prefs = SessionManager();
                          prefs.setAuthToken(state
                                  .loginresultData?.token?.accesstoken?.token ??
                              "");
                          savedDataToStorage(state.loginresultData);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenMainPage()));
                        });
                      } else if (state.loginresultData?.status == "Error") {
                        var msg = state.loginresultData?.message;
                        Fluttertoast.showToast(msg: "Invalid user");
                      } else if (state.isError) {
                        Fluttertoast.showToast(msg: "Invalid user");
                      }
                      return ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context).add(Loginclick(
                              username: username.text,
                              password: password.text));
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.grey),
                        child: const Text("LOGIN"),
                      );
                    },
                  ),
                  kHeight20,
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text(
                      "Forgot password ?",
                      style: TextStyle(fontSize: 12, color: kWhite),
                    ),
                  ),
                  kHeight20,
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text(
                      "You are not a member ? Register",
                      style: TextStyle(fontSize: 12, color: kWhite),
                    ),
                  )
                ],
              ),
            ),
          )),
        );
      },
    );
  }

  Future<void> savedDataToStorage(LoginResponse? loginresultData) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString(
        "token", loginresultData?.token?.accesstoken?.token ?? '');
    await sharedPrefs.setString("role", loginresultData?.role ?? '');
  }
}
