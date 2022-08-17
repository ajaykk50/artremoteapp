import 'package:art_remoteapp/application/leavetype/leave_type_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/preference/preference_bloc.dart';

var items = ['One', 'Two', 'Three', 'Four'];

class ScreenApplyLeavePage extends StatelessWidget {
  const ScreenApplyLeavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //showLoaderDialog(context);
      BlocProvider.of<PreferenceBloc>(context).add(const Prefdata());
    });

    // BlocProvider.of<LeaveTypeBloc>(context)
    //     .add(Getleavetype(token: state.token));
    return BlocBuilder<PreferenceBloc, PreferenceState>(
      builder: (context, state) {

        

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
                  BlocBuilder<LeaveTypeBloc, LeaveTypeState>(
                    builder: (context, state) {
                      // Navigator.pop(context);
                      return DropdownButtonFormField(
                        isExpanded: true,
                        hint: const Text("Select Leave Type",
                            style: TextStyle(color: Colors.black)),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (String? newvalue) {},
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2),
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
                      showLoaderDialog(context);
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Text("Apply Leave"),
                  ),
                ],
              ),
            ),
          )),
        );
      },
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
