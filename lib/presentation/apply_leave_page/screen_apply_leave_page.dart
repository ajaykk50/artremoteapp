import 'dart:developer';

import 'package:art_remoteapp/application/applyleave/applyleave_bloc.dart';
import 'package:art_remoteapp/application/login/login_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:art_remoteapp/presentation/notice_board_page/screen_notice_board_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/sessionmanager.dart';
import '../login_page/screen_login_page.dart';
import '../splash_page/screen_splash_page.dart';

var items = ['One', 'Two', 'Three', 'Four'];
SessionManager prefs = SessionManager();

class ScreenApplyLeavePage extends StatelessWidget {
  const ScreenApplyLeavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        BlocProvider.of<ApplyleaveBloc>(context)
            .add(Getleave(token: data.toString()));
      }, onError: (e) {});
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: const Text("Apply Leave"),
      ),
      body: SafeArea(
          child: Container(
        color: kWhite,
        padding: kPadding,
        child: Container(
          alignment: Alignment.center,
          padding: kPadding,
          decoration: BoxDecoration(
              color: backgroundGreyColor,
              borderRadius: BorderRadius.circular(10)),
          child: ListView(
            shrinkWrap: true,
            children: [
              BlocBuilder<ApplyleaveBloc, ApplyleaveState>(
                builder: (context, state) {
                  // Navigator.pop(context);
                  if (state.isServerError) {
                    return const ErrorDialog();
                    //return Text('bbbbbb ');
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     MaterialPageRoute(
                    //         builder: (context) => const ScreenLoginPage()),
                    //     (route) => false);
                  } else if (state.isClientError) {
                    return Text('aaaa ');
                  }
                  return const ErrorDialog();
                  return DropdownButtonFormField(
                    isExpanded: true,
                    hint: const Text("Select Leave Type",
                        style: TextStyle(color: Colors.black)),
                    items:
                        state.leavetyperesponse.map((LeaveTypeResponse items) {
                      return DropdownMenuItem(
                          value: items, child: Text(items.name.toString()));
                    }).toList(),
                    onChanged: (LeaveTypeResponse? newvalue) {},
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  );
                },
              ),
              kHeight,
              DropdownButtonFormField(
                isExpanded: true,
                hint: const Text("Select Leave Duration",
                    style: TextStyle(color: Colors.black)),
                items: items.map((String items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newvalue) {},
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      maxLines: 1,
                      onTap: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2100));
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: "From Date",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: kWhite,
                          filled: true),
                    ),
                  ),
                  kWidth,
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      maxLines: 1,
                      onTap: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2100));
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: "To Date",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: kWhite,
                          filled: true),
                    ),
                  ),
                ],
              ),
              kHeight,
              TextFormField(
                style: const TextStyle(fontSize: kFontsize),
                decoration: InputDecoration(
                    fillColor: kWhite,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'cc mail'),
              ),
              kHeight,
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLength: null,
                maxLines: 3,
                style: const TextStyle(fontSize: kFontsize),
                decoration: InputDecoration(
                    fillColor: kWhite,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'comments'),
              ),
              kHeight,
              ElevatedButton(
                onPressed: () {
                  Future.delayed(Duration.zero, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenLoginPage()));
                  });
                  // showLoaderDialog(context);
                },
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                child: const Text("Apply Leave"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text(
        'Message',
      ),
      actions: <Widget>[
        MaterialButton(
          child: const Text('OK'),
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(builder: (context) => const ScreenSplash()),
            //     (route) => false);
            //Navigator.of(context).pop();
            BlocProvider.of<LoginBloc>(context).add(const Logoutclick());
            Future.delayed(Duration.zero, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenSplash()));
            });
          },
        ),
      ],
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
