import 'dart:developer';

import 'package:art_remoteapp/presentation/home_page/screen_home_page.dart';
import 'package:art_remoteapp/presentation/profile_page/screen_profile_page.dart';
import 'package:flutter/material.dart';
import '../leave_details_page/screen_leave_history_tabs_page.dart';
import 'wigets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = const [
    ScreenHomePage(),
    ScreenProfilePage(),
    ScreenLeaveHistoryTabsPage(),
    //ScreenHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) {
            log('index......' + index.toString());
            return _pages[index];
          }),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
