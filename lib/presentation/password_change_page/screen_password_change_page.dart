import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../application/profile/profile_bloc.dart';
import '../../core/sessionmanager.dart';
import '../../core/utility.dart';

SessionManager prefs = SessionManager();
String token = "";
bool isProgressDialogshowing = false;

TextEditingController currentpasswdController = TextEditingController();
TextEditingController newpasswdController = TextEditingController();
TextEditingController confirmpasswdController = TextEditingController();

class ScreenPasswordChangePage extends StatelessWidget {
  const ScreenPasswordChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        token = data.toString();
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: const Text("Change Password"),
      ),
      body: SafeArea(
          child: Container(
        color: kWhite,
        padding: kPadding,
        child: Container(
          decoration: BoxDecoration(
              color: backgroundGreyColor,
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          width: double.infinity,
          padding: kPadding,
          child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (isProgressDialogshowing) {
                Navigator.pop(context);
                isProgressDialogshowing = false;
              }
              if (state.isLoading) {
                showLoaderDialog(context);
              } else if (state.isServerError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Utility.getInstance().showServerErrorDialog(
                      context, "There is some problem.Please try later");
                });
              } else if (state.isClientError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Utility.getInstance().showClientErrorDialog(
                      context, "Please check your network");
                });
              } else if (state.isAuthError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Utility.getInstance().showErrorDialog(context);
                });
              } else if (state.updateresp != null) {
                if (state.updateresp?.status == "Success") {
                  Fluttertoast.showToast(msg: "Successfully updates");
                } else {
                  Fluttertoast.showToast(
                      msg: "There is some problem.Tray again later");
                }
              }
            },
            builder: (context, state) {
              return ListView(
                shrinkWrap: true,
                children: [
                  Image.asset(
                    'assets/images/resetpass.jpg',
                    width: 150,
                    height: 150,
                  ),
                  kHeight20,
                  TextFormField(
                    controller: currentpasswdController,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                        fillColor: kWhite,
                        filled: true,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintText: 'old password'),
                  ),
                  kHeight,
                  TextFormField(
                    controller: newpasswdController,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                        fillColor: kWhite,
                        filled: true,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintText: 'New password'),
                  ),
                  kHeight,
                  TextFormField(
                    controller: confirmpasswdController,
                    style: const TextStyle(fontSize: kFontsize),
                    decoration: InputDecoration(
                        fillColor: kWhite,
                        filled: true,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        hintText: 'Confirm password'),
                  ),
                  kHeight,
                  ElevatedButton(
                    onPressed: () {
                      if (currentpasswdController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter current password");
                      } else if (newpasswdController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter new password");
                      } else if (confirmpasswdController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter confirm password");
                      } else if (newpasswdController.text !=
                          confirmpasswdController.text) {
                        Fluttertoast.showToast(msg: "Password mis match");
                      } else {
                        //showLoaderDialog(context);
                        BlocProvider.of<ProfileBloc>(context).add(Changepasswd(
                            token: token,
                            currentpasswd: currentpasswdController.text,
                            newpasswd: newpasswdController.text));
                      }
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Text("Change Password"),
                  ),
                ],
              );
            },
          ),
        ),
      )),
    );
  }
}

void showLoaderDialog(BuildContext context) {
  isProgressDialogshowing = true;
  AlertDialog alert = AlertDialog(
    content: Row(
      children: [
        const CircularProgressIndicator(),
        Container(
            margin: EdgeInsets.only(left: 7), child: const Text("Loading...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
