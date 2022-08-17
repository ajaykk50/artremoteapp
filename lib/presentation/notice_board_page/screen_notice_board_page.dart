import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenNoticeBoardPage extends StatelessWidget {
  const ScreenNoticeBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: Text("Notice Board"),
      ),
      body: const SafeArea(child: NoticeList()),
    );
  }
}

class NoticeList extends StatelessWidget {
  const NoticeList({
    Key? key,
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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          "22-05-2022",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Text("Description", style: TextStyle(color: Colors.black))
                  ],
                ),
              );
            },
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: 10),
      ),
    );
  }
}
