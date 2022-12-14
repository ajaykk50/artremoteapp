import 'dart:developer';

import 'package:art_remoteapp/application/applyleave/applyleave_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/domain/applyleave/model/leave_type_response/leave_type_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../core/sessionmanager.dart';
import '../../core/utility.dart';
import '../splash_page/screen_splash_page.dart';

var items = ['Full day', 'Fornoon', 'Afternoon'];
DateTime _selectedFromDate = DateTime.now();
DateTime _selectedToDate = DateTime.now();
List<DateTime> _selecteddates = [];

String _selectedLeaveTypeName = "";
String _selectedLeaveTypeId = "";
String _selectedDuration = "";
String token = "";
SessionManager prefs = SessionManager();
bool isProgressDialogshowing = false;

TextEditingController fromdate = TextEditingController();
TextEditingController todate = TextEditingController();
TextEditingController ccmail = TextEditingController();
TextEditingController comment = TextEditingController();

class ScreenApplyLeavePage extends StatelessWidget {
  const ScreenApplyLeavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        token = data.toString();
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
              BlocConsumer<ApplyleaveBloc, ApplyleaveState>(
                listener: (context, state) {
                  if (isProgressDialogshowing) {
                    Navigator.pop(context);
                    isProgressDialogshowing = false;
                  }

                  if (state.isLoading) {
                    showLoaderDialog(context);
                  } else if (state.isServerError) {
                    Utility.getInstance().showServerErrorDialog(
                        context, "There is some problem.Please try later");
                  } else if (state.isClientError) {
                    Utility.getInstance().showClientErrorDialog(
                        context, "Please Check your network connection");
                  } else if (state.isAuthError) {
                    Utility.getInstance().showErrorDialog(context);
                  } else if (state.response != null) {
                    Navigator.pop(context);
                    if (state.response?.status.toString() == 'Success') {
                      fromdate.text = "";
                      todate.text = "";
                      ccmail.text = "";
                      comment.text = "";
                      Fluttertoast.showToast(msg: "Successfully leave applied");
                      Navigator.pop(context);
                    } else {
                      Fluttertoast.showToast(
                          msg: state.response?.message.toString() ?? "");
                    }
                  }
                },
                builder: (context, state) {
                  return ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButtonFormField(
                      isExpanded: true,
                      hint: const Text("Select Leave Type",
                          style: TextStyle(color: Colors.black)),
                      items: state.leavetyperesponse
                          .map((LeaveTypeResponse items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items.name.toString()));
                      }).toList(),
                      onChanged: (LeaveTypeResponse? newvalue) {
                        _selectedLeaveTypeId = newvalue?.id?.toString() ?? "";
                        _selectedLeaveTypeName =
                            newvalue?.name?.toString() ?? "";
                      },
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
                    ),
                  );
                },
              ),
              kHeight,
              const LeaveDuration(),
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextField(
                      controller: fromdate,
                      textAlign: TextAlign.center,
                      readOnly: true,
                      maxLines: 1,
                      onTap: () {
                        _selectFromDate(context);
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(0),
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
                      controller: todate,
                      textAlign: TextAlign.center,
                      readOnly: true,
                      maxLines: 1,
                      onTap: () {
                        _selectToDate(context);
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(0),
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
                controller: ccmail,
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
                controller: comment,
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
                  if (_selectedLeaveTypeId.isEmpty) {
                    Fluttertoast.showToast(msg: "Select leave type");
                  } else if (_selectedDuration.isEmpty) {
                    Fluttertoast.showToast(msg: "Select leave duration");
                  } else if (fromdate.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Select from date");
                  } else if (todate.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Select to date");
                  } else if (DateFormat("dd-MM-yyyy")
                          .parse(todate.text)
                          .compareTo(
                              DateFormat("dd-MM-yyyy").parse(fromdate.text)) <
                      0) {
                    Fluttertoast.showToast(
                        msg: "To date must be greater or equal to From date");
                  } else if (ccmail.text.isEmpty ||
                      !validateEmail(ccmail.text)) {
                    Fluttertoast.showToast(msg: "Enter valid cc mail");
                  } else {
                    DateTime from =
                        DateFormat("dd-MM-yyyy").parse(fromdate.text);
                    DateTime to = DateFormat("dd-MM-yyyy").parse(todate.text);

                    _selecteddates.clear();
                    _selecteddates = getDaysInBetween(from, to);
                    var durationId = "";

                    if (_selectedDuration == "Full day") {
                      durationId = "0";
                    } else if (_selectedDuration == "Fornoon") {
                      durationId = "1";
                    } else if (_selectedDuration == "Afternoon") {
                      durationId = "2";
                    }
                    BlocProvider.of<ApplyleaveBloc>(context).add(Submitleave(
                        token: token,
                        ccMail: ccmail.text,
                        comment: comment.text,
                        dates: _selecteddates,
                        leaveType: _selectedLeaveTypeId,
                        leaveDuration: durationId));
                  }
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

bool validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

void showErrorDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx1) {
        return AlertDialog(
          title: const Text('Message'),
          content: const Text('Please login'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const ScreenSplash()),
                      (route) => false);
                },
                child: const Text('OK'))
          ],
        );
      });
}

void showClientErrorDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx1) {
        return AlertDialog(
          title: const Text('Message'),
          content: const Text('Please check your network connection'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(ctx1);
                },
                child: const Text('OK'))
          ],
        );
      });
}

List<DateTime> getDaysInBetween(DateTime startDate, DateTime endDate) {
  List<DateTime> days = [];
  days.clear();
  for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
    days.add(startDate.add(Duration(days: i)));
  }
  return days;
}

void _selectFromDate(BuildContext context) async {
  DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate:
          _selectedFromDate != null ? _selectedFromDate : DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040));

  if (newSelectedDate != null) {
    _selectedFromDate = newSelectedDate;
    final DateFormat df = DateFormat('dd-MM-yyyy');

    fromdate
      ..text = df.format(_selectedFromDate)
      ..selection = TextSelection.fromPosition(TextPosition(
          offset: fromdate.text.length, affinity: TextAffinity.upstream));
  }
}

void _selectToDate(BuildContext context) async {
  DateTime? newSelectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedToDate != null ? _selectedToDate : DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040));

  if (newSelectedDate != null) {
    _selectedToDate = newSelectedDate;
    final DateFormat df = DateFormat('dd-MM-yyyy');

    todate
      ..text = df.format(_selectedToDate)
      ..selection = TextSelection.fromPosition(TextPosition(
          offset: fromdate.text.length, affinity: TextAffinity.upstream));
  }
}

class LeaveDuration extends StatelessWidget {
  const LeaveDuration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      alignedDropdown: true,
      child: DropdownButtonFormField(
        isExpanded: true,
        hint: const Text("Select Leave Duration",
            style: TextStyle(color: Colors.black)),
        items: items.map((String items) {
          return DropdownMenuItem(value: items, child: Text(items));
        }).toList(),
        onChanged: (String? newvalue) {
          _selectedDuration = newvalue.toString();
        },
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
    );
  }
}

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: AlertDialog(
        content: const Text(
          'Message',
        ),
        actions: <Widget>[
          MaterialButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const ScreenSplash()),
                  (route) => false);
              //Navigator.of(context).pop();
              // BlocProvider.of<LoginBloc>(context).add(const Logoutclick());
              // Future.delayed(Duration.zero, () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => ScreenSplash()));
              // });
            },
          ),
        ],
      ),
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
