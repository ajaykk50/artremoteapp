import 'dart:developer';

import 'package:art_remoteapp/application/noticeboard/noticeboard_bloc.dart';
import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/core/utility.dart';
import 'package:art_remoteapp/domain/noticeboard/model/notice_board_response/notice_board_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/sessionmanager.dart';

String token = "";
SessionManager prefs = SessionManager();
bool isProgressDialogshowing = false;

class ScreenNoticeBoardPage extends StatelessWidget {
  const ScreenNoticeBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<String> authToken = prefs.getAuthToken();
      authToken.then((data) {
        token = data.toString();
        BlocProvider.of<NoticeboardBloc>(context)
            .add(Getnotice(token: data.toString()));
      }, onError: (e) {});
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: const Text("Notice Board"),
      ),
      body: BlocBuilder<NoticeboardBloc, NoticeboardState>(
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
              Utility.getInstance()
                  .showClientErrorDialog(context, "Please check your network");
            });
          } else if (state.isServerError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Utility.getInstance().showServerErrorDialog(
                  context, "There is some problem.Try again later");
            });
          } else if (state.isAuthError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Utility.getInstance().showErrorDialog(context);
            });
          }
          return SafeArea(
              child: NoticeList(
            response: state.response,
          ));
        },
      ),
    );
  }
}

class NoticeList extends StatelessWidget {
  List<NoticeBoardResponse> response = [];

  NoticeList({
    Key? key,
    required this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding,
      child: Container(
        padding: kPadding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: baackgroundYellowColor,
        ),
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        response[index].time.toString(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    kHeight,
                    Text(
                      response[index].name.toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    kHeight,
                    Text(response[index].description.toString(),
                        style: const TextStyle(color: Colors.black))
                  ],
                ),
              );
            },
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: response.length),
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
