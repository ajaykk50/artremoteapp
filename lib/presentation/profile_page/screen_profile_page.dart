import 'dart:developer';

import 'package:art_remoteapp/application/profile/profile_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/core/sessionmanager.dart';
import 'package:art_remoteapp/presentation/password_change_page/screen_password_change_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/utility.dart';

SessionManager prefs = SessionManager();
String firstname = "";
String lastname = "";
String username = "";
String mobile = "";
String email = "";
String workemail = "";
String emergencycontact = "";
String token = "";

TextEditingController emailController = TextEditingController();
TextEditingController workemailController = TextEditingController();
TextEditingController mobileController = TextEditingController();
TextEditingController emgcontactController = TextEditingController();

class ScreenProfilePage extends StatelessWidget {
  const ScreenProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        token = data.toString();
        BlocProvider.of<ProfileBloc>(context)
            .add(Getprofile(token: data.toString()));
      });
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: const Text("Profile"),
      ),
      body: SafeArea(
          child: Container(
        padding: kPadding,
        child: Container(
          padding: kPadding,
          decoration: BoxDecoration(
              color: backgroundGreyColor,
              borderRadius: BorderRadius.circular(10)),
          child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state.isLoading) {
                // showLoaderDialog(context);
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
                Navigator.pop(context);
                if (state.updateresp?.status == 'Success') {
                  Fluttertoast.showToast(msg: "Successfully updates");
                } else {
                  Fluttertoast.showToast(
                      msg: "There is some problem.Tray again later");
                }
              }
            },
            builder: (context, state) {
              if (state.response != null) {
                //Navigator.pop(context);
                firstname = state.response?.firstName ?? "";
                lastname = state.response?.lastName ?? "";
                mobile = state.response?.perMobile ?? "";
                email = state.response?.perEmail ?? "";
                workemail = state.response?.workEmail ?? "";
                emergencycontact = state.response?.emergencyContact ?? "";
                username = state.response?.userName ?? "";

                log("firstname" + firstname);
                log("email" + email);

                emailController.text = email;
                mobileController.text = mobile;
                workemailController.text = workemail;
                emgcontactController.text = emergencycontact;
              }

              return ListView(
                children: [
                  const InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 40.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 38.0,
                        // child: ClipOval(child: (_image != null)
                        // ? Image.file(_image): Image.asset('images/newimage.png'),),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      firstname + " " + lastname,
                      style: const TextStyle(fontSize: 17, color: kWhite),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      username,
                      style: const TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                  kHeight,
                  const Text(
                    "Personal",
                    style: TextStyle(
                        fontSize: 15,
                        color: baackgroundYellowColor,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight,
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      fillColor: kWhite,
                      prefixIcon: const Icon(Icons.email),
                      hintText: "Email",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  TextFormField(
                    controller: mobileController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone_android),
                      fillColor: kWhite,
                      hintText: "Phone number",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  const Text(
                    "Company",
                    style: TextStyle(
                        fontSize: 15,
                        color: baackgroundYellowColor,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight,
                  TextFormField(
                    controller: workemailController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      fillColor: kWhite,
                      hintText: "Company mail",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  const Text(
                    "Emergency",
                    style: TextStyle(
                        fontSize: 15,
                        color: baackgroundYellowColor,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight,
                  TextFormField(
                    controller: emgcontactController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone_android),
                      fillColor: kWhite,
                      hintText: "Emergency contact",
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  kHeight,
                  ElevatedButton(
                    onPressed: () {
                      if (emailController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter personal email");
                      } else if (mobileController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter mobile number");
                      } else if (workemailController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter company email");
                      } else if (emgcontactController.text.isEmpty) {
                        Fluttertoast.showToast(msg: "Enter emergency contact");
                      } else {
                        showLoaderDialog(context);
                        BlocProvider.of<ProfileBloc>(context).add(Updateprofile(
                            token: token,
                            mobile: mobileController.text,
                            workemail: workemailController.text,
                            othemail: emailController.text,
                            emergencyno: emgcontactController.text));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: baackgroundYellowColor),
                    child: const Text("Update"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ScreenPasswordChangePage()));
                      },
                      child: const Text(
                        'Change Password',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: baackgroundYellowColor),
                      ),
                    ),
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
