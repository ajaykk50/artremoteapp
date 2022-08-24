import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/profile/profile_bloc.dart';
import '../../core/sessionmanager.dart';

SessionManager prefs = SessionManager();
String token = "";

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
              if (state.isLoading) {
              } else if (state.isServerError) {
              } else if (state.isClientError) {
              } else if (state.updateresp != null) {
                if (state.updateresp?.status == "Success") {
                  Navigator.pop(context);
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
                      BlocProvider.of<ProfileBloc>(context).add(Changepasswd(
                          token: token,
                          currentpasswd: currentpasswdController.text,
                          newpasswd: newpasswdController.text));
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
