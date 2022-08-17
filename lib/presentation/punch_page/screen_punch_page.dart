import 'dart:ffi';

import 'package:art_remoteapp/application/punch/punch_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

import '../../application/preference/preference_bloc.dart';

String? token = "";
String? todaysigninTime = "";
var todaysignin = 0.00;

String? weeksigninTime = "";
var weeksignin = 0.00;
var lastpunchTime = "";

TextEditingController comment = TextEditingController();

class ScreenPunchPage extends StatelessWidget {
  const ScreenPunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //getsavedData();
      BlocProvider.of<PreferenceBloc>(context).add(const Prefdata());
    });
    return BlocBuilder<PreferenceBloc, PreferenceState>(
      builder: (context, state) {
        if (state.token != '') {
          token = state.token;
          BlocProvider.of<PunchBloc>(context)
              .add(PunchDetails(token: state.token));
        }

        return Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundGreyColor,
              title: Text("Punch IN/OUT"),
            ),
            backgroundColor: kWhite,
            body: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: BlocBuilder<PunchBloc, PunchState>(
                  builder: (context, state) {
                    if (state.punchresponse != null) {
                      var todayval = state.punchresponse?.todaysHours ?? 0;
                      var weekval = state.punchresponse?.weeksHours ?? 0;
                      bool _switchValue = false;
                      if (state.punchresponse?.punchState == "PUNCHED IN") {
                        _switchValue = true;
                      } else {
                        _switchValue = false;
                      }

                      getTodayTime(todayval);
                      getWeekTime(weekval);

                      lastpunchTime = state.punchresponse?.lastPunchTime ?? '';
                    }

                    return Container(
                      padding: EdgeInsets.all(20),
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
                          kHeight,
                          DigitalClock(
                            areaDecoration:
                                const BoxDecoration(color: Colors.transparent),
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
                          const Text(
                            "Work Progress",
                            style: TextStyle(color: kWhite, fontSize: 20),
                          ),
                          kHeight,
                          const Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Text(
                            "Last punch in : ${lastpunchTime}",
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
                              "Daily : ${todaysigninTime}",
                              style: TextStyle(color: kWhite, fontSize: 15),
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
                              "Weekly : ${weeksigninTime}",
                              style:
                                  const TextStyle(color: kWhite, fontSize: 15),
                            ),
                          ),
                          kHeight20,
                          // CupertinoSwitch(
                          //   value: _switchValue,
                          //   onChanged: (value) {
                          //     _switchValue = false;
                          //   },
                          //   activeColor: baackgroundYellowColor,
                          //   trackColor: Colors.grey,
                          // ),
                          ElevatedButton(
                            onPressed: () {
                              print("click works.....");
                              BlocProvider.of<PunchBloc>(context).add(
                                  OnPunchClick(
                                      token: token.toString(),
                                      datetime: datetime(),
                                      comment: comment.text));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: baackgroundYellowColor),
                            child: Text(state.punchresponse?.punchState ??
                                state.punchingresponse?.punchState ??
                                ''),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ));
      },
    );
  }

  String data() {
    DateTime now = DateTime.now();
    return now.toString().substring(0, 10);
  }

  String datetime() {
    DateTime now = DateTime.now();
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
    todaysigninTime = todayval.toStringAsFixed(2);
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
