import 'dart:developer';

import 'package:art_remoteapp/application/leavedetails/leavedetails_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../core/sessionmanager.dart';
import '../../core/utility.dart';

Map<String, double> datamap = {};
String token = "";
SessionManager prefs = SessionManager();
DateTime _selectedFromDate = DateTime.now();
DateTime _selectedToDate = DateTime.now();
TextEditingController fromdate = TextEditingController();
TextEditingController todate = TextEditingController();

var total_casual = 0.0;
var usesd_casual = 0.0;
var balance_casual = 0.0;
var total_sick = 0.0;
var usesd_sick = 0.0;
var balance_sick = 0.0;
var total_wfh = 0.0;
var usesd_wfh = 0.0;
var balance_wfh = 0.0;
var total_compoff = 0.0;
var usesd_compoff = 0.0;
var balance_compoff = 0.0;
var compoffpercentage = 0.0;
int removePos = -1;
String leaveused = "";
String leavename = "";

class ScreenLeaveHistoryTabsPage extends StatelessWidget {
  const ScreenLeaveHistoryTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        token = data.toString();
        BlocProvider.of<LeavedetailsBloc>(context)
            .add(Getleavecount(token: data.toString()));

        BlocProvider.of<LeavedetailsBloc>(context).add(Getleavedetails(
            token: token,
            fromdate: '0101${DateTime.now().year}',
            todate: '0112${DateTime.now().year}'));
      }, onError: (e) {});
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: const Text("Leave Entitlement"),
      ),
      body: SafeArea(
        child: Container(
          padding: kPadding,
          color: kWhite,
          child: Container(
            padding: kPadding,
            decoration: BoxDecoration(
                color: backgroundGreyColor,
                borderRadius: BorderRadius.circular(10)),
            child: ListView(
              children: [
                BlocConsumer<LeavedetailsBloc, LeavedetailsState>(
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
                    } else if (state.detailsresp != null) {}
                  },
                  builder: (context, state) {
                    if (state.countresp.isNotEmpty) {
                      total_casual =
                          double.parse(state.countresp[0].total.toString());
                      usesd_casual =
                          double.parse(state.countresp[0].used.toString());
                      balance_casual = total_casual - usesd_casual;

                      total_sick =
                          double.parse(state.countresp[1].total.toString());
                      usesd_sick =
                          double.parse(state.countresp[1].used.toString());
                      balance_sick = total_sick - usesd_sick;

                      total_wfh =
                          double.parse(state.countresp[2].total.toString());
                      usesd_wfh =
                          double.parse(state.countresp[2].used.toString());
                      balance_wfh = total_wfh - usesd_wfh;

                      if (state.countresp.length > 3) {
                        total_compoff =
                            double.parse(state.countresp[3].total.toString());
                        usesd_compoff =
                            double.parse(state.countresp[3].used.toString());
                        balance_compoff = total_compoff - usesd_compoff;
                        compoffpercentage = usesd_compoff / total_compoff;
                      }
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        kHeight,
                        CircularPercentIndicator(
                          radius: 30,
                          animation: true,
                          backgroundColor: Colors.green,
                          lineWidth: 10.0,
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: usesd_casual / total_casual,
                          progressColor: Colors.red,
                          center: Text(
                            usesd_casual.toString(),
                            style: const TextStyle(color: kWhite, fontSize: 20),
                          ),
                          header: const Text(
                            'Casual',
                            style: TextStyle(color: kWhite),
                          ),
                          footer: Text(
                            'Total ${total_casual.toString()}',
                            style: const TextStyle(color: kWhite),
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 30,
                          animation: true,
                          backgroundColor: Colors.green,
                          lineWidth: 10.0,
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: usesd_sick / total_sick,
                          progressColor: Colors.red,
                          center: Text(
                            usesd_sick.toString(),
                            style: const TextStyle(color: kWhite, fontSize: 20),
                          ),
                          header: const Text(
                            'Sick',
                            style: TextStyle(color: kWhite),
                          ),
                          footer: Text(
                            'Total ${total_sick.toString()}',
                            style: const TextStyle(color: kWhite),
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 30,
                          animation: true,
                          backgroundColor: Colors.green,
                          lineWidth: 10.0,
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: usesd_wfh / total_wfh,
                          progressColor: Colors.red,
                          center: Text(
                            usesd_wfh.toString(),
                            style: const TextStyle(color: kWhite, fontSize: 20),
                          ),
                          header: const Text(
                            'WFH',
                            style: TextStyle(color: kWhite),
                          ),
                          footer: Text(
                            'Total ${total_wfh.toString()}',
                            style: const TextStyle(color: kWhite),
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 30,
                          animation: true,
                          backgroundColor: Colors.green,
                          lineWidth: 10.0,
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: compoffpercentage,
                          progressColor: Colors.red,
                          center: Text(
                            usesd_compoff.toString(),
                            style: const TextStyle(color: kWhite, fontSize: 20),
                          ),
                          header: const Text(
                            'Comp Off',
                            style: TextStyle(color: kWhite),
                          ),
                          footer: Text(
                            'Total ${total_compoff.toString()}',
                            style: const TextStyle(color: kWhite),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                kHeight20,
                Container(
                  padding: kPadding,
                  decoration: BoxDecoration(
                      color: kWhite, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Text(
                        'Leave History',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 35,
                            child: TextField(
                              controller: fromdate,
                              textAlign: TextAlign.center,
                              readOnly: true,
                              maxLines: 1,
                              onTap: () {
                                _selectFromDate(context);
                              },
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.calendar_month),
                                  prefixIconConstraints: const BoxConstraints(
                                      minWidth: 30, minHeight: 15),
                                  contentPadding: const EdgeInsets.all(0),
                                  hintText: "From Date",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  fillColor: kWhite,
                                  filled: true),
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 35,
                            child: TextField(
                              controller: todate,
                              textAlign: TextAlign.center,
                              readOnly: true,
                              maxLines: 1,
                              onTap: () {
                                _selectToDate(context);
                              },
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.calendar_month),
                                  prefixIconConstraints: const BoxConstraints(
                                      minWidth: 30, minHeight: 15),
                                  contentPadding: const EdgeInsets.all(0),
                                  hintText: "To Date",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  fillColor: kWhite,
                                  filled: true),
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      kHeight20,
                      ElevatedButton(
                        onPressed: () {
                          if (fromdate.text.isEmpty) {
                            Fluttertoast.showToast(msg: "Select from date");
                          } else if (todate.text.isEmpty) {
                            Fluttertoast.showToast(msg: "Select to date");
                          } else {
                            final date1 = fromdate.text
                                .toString()
                                .replaceAll(RegExp('-'), '');
                            final date2 = todate.text
                                .toString()
                                .replaceAll(RegExp('-'), '');

                            BlocProvider.of<LeavedetailsBloc>(context).add(
                                Getleavedetails(
                                    token: token,
                                    fromdate: date1,
                                    todate: date2));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: baackgroundYellowColor),
                        child: const Text(
                          'Search',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      kHeight20,
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Summery',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      kHeight,
                      BlocBuilder<LeavedetailsBloc, LeavedetailsState>(
                        builder: (context, state) {
                          var countdetails = state.detailsresp?.leaveCount;
                          var count =
                              state.detailsresp?.leaveCount?.length ?? 0;

                          return GridView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(10.0),
                            physics:
                                const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                            itemCount: count,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 3 / 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemBuilder: ((context, index) {
                              leaveused =
                                  countdetails?[index].leaveUsed?.toString() ??
                                      "";
                              leavename =
                                  countdetails?[index].name.toString() ?? "";
                              return GridTile(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: baackgroundlightYellowColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: kPadding,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        leaveused,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        leavename,
                                        style: const TextStyle(
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                      kHeight,
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      kHeight,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: baackgroundYellowColor,
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text('Date'),
                            Text('Type'),
                            Text('Duration'),
                            Text('Status'),
                          ],
                        ),
                      ),
                      kHeight,
                      BlocBuilder<LeavedetailsBloc, LeavedetailsState>(
                        builder: (context, state) {
                          if (state.removeresp != null) {
                            state.detailsresp?.leaveList?.removeAt(removePos);
                          }
                          var totalItem =
                              state.detailsresp?.leaveList?.length ?? 0;
                          var leavelist = state.detailsresp?.leaveList;

                          return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (ctx, index) {
                                var type = leavelist?[index].type.toString();
                                var leaveid = leavelist?[index].id.toString();
                                var leavetype =
                                    type?.replaceAll(RegExp("Leave"), "");
                                leavetype = leavetype
                                    .toString()
                                    .replaceAll(RegExp(' '), '');

                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                        flex: 2,
                                        child: Text(
                                          leavelist?[index].date ?? "",
                                          style: const TextStyle(fontSize: 12),
                                        )),
                                    Flexible(flex: 1, child: Text(leavetype)),
                                    Flexible(
                                        flex: 1,
                                        child: Text(
                                          leavelist?[index].duration ?? "",
                                          style: const TextStyle(fontSize: 12),
                                        )),
                                    Flexible(
                                        flex: 1,
                                        child: Text(
                                          leavelist?[index].status ?? "",
                                          style: const TextStyle(fontSize: 12),
                                        )),
                                    Flexible(
                                        flex: 1,
                                        child: (leavelist?[index].status ==
                                                'PENDING')
                                            ? IconButton(
                                                onPressed: () {
                                                  removePos = index;
                                                  showAlertDialog(
                                                      context, leaveid, token);
                                                },
                                                icon: const Icon(
                                                  Icons.delete,
                                                ),
                                                iconSize: 20,
                                              )
                                            : IconButton(
                                                onPressed: () {},
                                                iconSize: 20,
                                                icon: const Icon(Icons.check))),
                                  ],
                                );
                              },
                              separatorBuilder: (ctx, index) => kHeight,
                              itemCount: totalItem);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context, String? leaveid, String token) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: const Text("Continue"),
    onPressed: () {
      BlocProvider.of<LeavedetailsBloc>(context)
          .add(Deleteleave(token: token, id: leaveid.toString()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Delete"),
    content: const Text("Are you sure to delete this item?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
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
