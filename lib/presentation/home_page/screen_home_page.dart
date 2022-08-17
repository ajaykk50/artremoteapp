import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/presentation/notice_board_page/screen_notice_board_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../apply_leave_page/screen_apply_leave_page.dart';
import '../hr_page/screen_hr_page.dart';
import '../punch_page/screen_punch_page.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  // var images = [
  //   'assets/images/punchin.jpg',
  //   'assets/images/notice.png',
  //   'assets/images/leave.png',
  //   'assets/images/help.png'
  // ];

  // var title = ['Punch In/Out', 'Notice Board', 'Apply Leave', 'Help Desk'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: Text("Home"),
      ),
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        color: baackgroundYellowColor,
        child: ListView(
          shrinkWrap: true,
          children: [
            Image.asset(
              'assets/images/home.png',
              width: 120,
              height: 120,
            ),
            kHeight,
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                "Remote Art",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            kHeight20,
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: backgroundGreyColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ScreenPunchPage()));
                        },
                        child: HomeBox(
                          imageUrl: 'assets/images/punchin.jpg',
                          title: 'Punch In/Out',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ScreenNoticeBoardPage()));
                        },
                        child: HomeBox(
                          imageUrl: 'assets/images/notice.png',
                          title: 'Notice Board',
                        ),
                      ),
                    ],
                  ),
                  kHeight50,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("aaaaaaaaa");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ScreenApplyLeavePage()));
                        },
                        child: HomeBox(
                          imageUrl: 'assets/images/leave.png',
                          title: 'Apply Leave',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Future<void>.delayed(
                              const Duration(milliseconds: 10),
                              () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: ListView(
                                        shrinkWrap: true,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ScreenHrPage(
                                                            hepdeskId: "1",
                                                          )));
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/hrlogo.jpg',
                                                  width: 35,
                                                  height: 35,
                                                ),
                                                kWidth,
                                                const Text(
                                                  'HR',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            color: Colors.black,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ScreenHrPage(
                                                            hepdeskId: "2",
                                                          )));
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/accounts.jpg',
                                                  width: 35,
                                                  height: 35,
                                                ),
                                                kWidth,
                                                const Text(
                                                  'Accounts',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            color: Colors.black,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ScreenHrPage(
                                                            hepdeskId: "3",
                                                          )));
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/network.png',
                                                  width: 35,
                                                  height: 35,
                                                ),
                                                kWidth,
                                                const Text(
                                                  'Network',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }));
                        },
                        child: HomeBox(
                          imageUrl: 'assets/images/help.png',
                          title: 'Help',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class HomeBox extends StatelessWidget {
  String imageUrl;
  String title;

  HomeBox({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kWhite),
          padding: const EdgeInsets.all(10),
          child: Image.asset(imageUrl),
        ),
        kHeight,
        Text(
          title,
          style: TextStyle(color: kWhite),
        )
      ],
    );
  }
}

Future<String?> getsavedData() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  String? token = sharedPrefs.getString('token');
  return token;
}
