import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/domain/core/api_end_points.dart';
import 'package:flutter/material.dart';

import 'screen_leave_history_tabs_page.dart';

class ScreenLeaveDetailsPage extends StatelessWidget {
  const ScreenLeaveDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Leave Details'),
            backgroundColor: backgroundGreyColor,
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Casual',
                ),
                Tab(
                  text: 'Sick',
                ),
                Tab(
                  text: 'WFH',
                ),
                Tab(
                  text: 'Comp Off',
                ),
              ],
            )),
        body: const TabBarView(children: [
          ScreenLeaveHistoryTabsPage(),
          ScreenLeaveHistoryTabsPage(),
          ScreenLeaveHistoryTabsPage(),
          ScreenLeaveHistoryTabsPage(),
        ]),
      ),
    ));
  }
}
