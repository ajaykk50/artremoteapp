import 'dart:developer';

import 'package:art_remoteapp/application/punch/punch_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

import '../../core/sessionmanager.dart';
import '../../core/utility.dart';

String? token = "";
String? todaysigninTime = "";
var todaysignin = 0.00;

String? weeksigninTime = "";
var weeksignin = 0.00;
var lastpunchTime = "";
var dateLocal = "";
var punchedType = "";
bool isProgressDialogshowing = false;

SessionManager prefs = SessionManager();

TextEditingController comment = TextEditingController();

class ScreenPunchPage extends StatelessWidget {
  const ScreenPunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        token = data.toString();
        BlocProvider.of<PunchBloc>(context).add(PunchDetails(token: data));
      });
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundGreyColor,
          title: const Text("Punch IN/OUT"),
        ),
        backgroundColor: kWhite,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: BlocBuilder<PunchBloc, PunchState>(
              builder: (context, state) {
                if (isProgressDialogshowing) {
                  Navigator.pop(context);
                  isProgressDialogshowing = false;
                }

                if (state.isLoading) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    showLoaderDialog(context);
                  });
                } else if (state.isClientError) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Utility.getInstance().showClientErrorDialog(
                        context, "Please check your network");
                  });
                } else if (state.isServerError) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Utility.getInstance().showServerErrorDialog(
                        context, "There is some problem.Please try later");
                  });
                } else if (state.isAuthError) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Utility.getInstance().showErrorDialog(context);
                  });
                } else if (state.punchresponse != null) {
                  var todayval = state.punchresponse?.todaysHours ?? 0;
                  var weekval = state.punchresponse?.weeksHours ?? 0;

                  getTodayTime(todayval);
                  getWeekTime(weekval);

                  lastpunchTime = state.punchresponse?.lastPunchTime ?? '';
                  if (lastpunchTime.isNotEmpty) {
                    var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss")
                        .parse(lastpunchTime, true);
                    dateLocal = dateTime.toLocal().toString();
                  }
                  punchedType =
                      state.punchresponse?.punchState.toString() ?? '';
                } else if (state.punchingresponse != null) {
                  punchedType =
                      state.punchingresponse?.punchState.toString() ?? '';

                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    BlocProvider.of<PunchBloc>(context)
                        .add(PunchDetails(token: token.toString()));
                  });
                }

                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: backgroundGreyColor,
                  ),
                  height: double.infinity,
                  child: ListView(
                    children: [
                      Text(
                        'Date : ${data()}',
                        style: const TextStyle(color: kWhite, fontSize: 15),
                      ),
                      kHeight20,
                      const Text(
                        "Work Progress",
                        style: TextStyle(color: kWhite, fontSize: 20),
                      ),
                      kHeight,
                      const Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      kHeight,
                      Text(
                        "Last punch in : $dateLocal",
                        style: const TextStyle(color: kWhite, fontSize: 15),
                      ),
                      kHeight20,
                      const Text(
                        "Daily : ",
                        style: TextStyle(color: kWhite, fontSize: 15),
                      ),
                      kHeight,
                      LinearPercentIndicator(
                        percent: todaysignin,
                        progressColor: Colors.green,
                        backgroundColor: Colors.white,
                        lineHeight: 15,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Daily : $todaysigninTime",
                          style: const TextStyle(color: kWhite, fontSize: 15),
                        ),
                      ),
                      kHeight20,
                      const Text(
                        "Weekly : ",
                        style: TextStyle(color: kWhite, fontSize: 15),
                      ),
                      kHeight,
                      LinearPercentIndicator(
                        percent: weeksignin,
                        progressColor: Colors.green,
                        backgroundColor: Colors.white,
                        lineHeight: 15,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Weekly : $weeksigninTime",
                          style: const TextStyle(color: kWhite, fontSize: 15),
                        ),
                      ),
                      kHeight20,
                      TextFormField(
                        controller: comment,
                        keyboardType: TextInputType.multiline,
                        maxLength: null,
                        maxLines: 3,
                        decoration: InputDecoration(
                            fillColor: kWhite,
                            filled: true,
                            hintText: "Notes",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      kHeight20,
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<PunchBloc>(context).add(
                                OnPunchClick(
                                    token: token.toString(),
                                    datetime: datetime(),
                                    comment: comment.text));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: baackgroundYellowColor),
                          child: (punchedType == 'PUNCHED IN')
                              ? const Text('PUNCH OUT')
                              : const Text('PUNCH IN')),
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }

  String data() {
    DateTime now = DateTime.now();
    return now.toString().substring(0, 10);
  }

  String datetime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    return now.toString();
  }

  Future<void> getsavedData() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    token = sharedPrefs.getString('token');
  }
}

void getTodayTime(double todayval) {
  if (todayval != 0) {
    todaysignin = todayval / 8;
    if (todaysignin > 1) todaysignin = 1;
    if (todayval > 24) {
      todaysigninTime = "24";
    } else {
      todaysigninTime = todayval.toStringAsFixed(2);
    }
  } else {
    todaysigninTime = "";
  }
}

void getWeekTime(double weekval) {
  if (weekval != 0) {
    weeksignin = weekval / 45;
    if (weeksignin > 1) weeksignin = 1;
    weeksigninTime = weekval.toStringAsFixed(2);
  } else {
    weeksigninTime = "";
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
