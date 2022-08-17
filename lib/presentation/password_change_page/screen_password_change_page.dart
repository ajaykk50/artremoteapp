import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenPasswordChangePage extends StatelessWidget {
  const ScreenPasswordChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: Text("Change Password"),
      ),
      body: SafeArea(
          child: Container(
        color: kWhite,
        padding: kPadding,
        child: Container(
          decoration: BoxDecoration(
              color: backgroundGreyColor,
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          width: double.infinity,
          padding: kPadding,
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset(
                'assets/images/resetpass.jpg',
                width: 150,
                height: 150,
              ),
              kHeight20,
              TextFormField(
                style: const TextStyle(fontSize: kFontsize),
                decoration: InputDecoration(
                    fillColor: kWhite,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    hintText: 'old password'),
              ),
              kHeight,
              TextFormField(
                style: const TextStyle(fontSize: kFontsize),
                decoration: InputDecoration(
                    fillColor: kWhite,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    hintText: 'New password'),
              ),
              kHeight,
              TextFormField(
                style: const TextStyle(fontSize: kFontsize),
                decoration: InputDecoration(
                    fillColor: kWhite,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    hintText: 'Confirm password'),
              ),
              kHeight,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                child: const Text("Change Password"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
