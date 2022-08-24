import 'package:flutter/material.dart';

import '../presentation/splash_page/screen_splash_page.dart';

class Utility {
  static Utility utility = Utility();

  static Utility getInstance() {
    if (utility == null) {
      utility = Utility();
    }
    return utility;
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

  void showClientErrorDialog(BuildContext context, String msg) {
    showDialog(
        context: context,
        builder: (ctx1) {
          return AlertDialog(
            title: const Text('Message'),
            content: Text(msg),
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
}
