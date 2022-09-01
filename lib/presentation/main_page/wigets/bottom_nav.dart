import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // indexChangeNotifier.value = 0;
    });
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          // indexChangeNotifier.value = 0;
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            backgroundColor: backgroundGreyColor,
            selectedItemColor: baackgroundYellowColor,
            unselectedItemColor: kWhite,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            selectedIconTheme:
                const IconThemeData(color: baackgroundYellowColor),
            unselectedIconTheme: const IconThemeData(color: kWhite),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Leave Details"),
              // BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout")
            ],
          );
        });
  }
}
