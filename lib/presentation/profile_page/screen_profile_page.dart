import 'package:art_remoteapp/core/colors/colors.dart';
import 'package:art_remoteapp/core/constants.dart';
import 'package:art_remoteapp/presentation/password_change_page/screen_password_change_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenProfilePage extends StatelessWidget {
  const ScreenProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreyColor,
        title: Text("Profile"),
      ),
      body: SafeArea(
          child: Container(
        padding: kPadding,
        child: Container(
          padding: kPadding,
          decoration: BoxDecoration(
              color: backgroundGreyColor,
              borderRadius: BorderRadius.circular(10)),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ScreenPasswordChangePage()));
                  },
                  child: const Text(
                    'Change Password?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: baackgroundYellowColor),
                  ),
                ),
              ),
              kHeight20,
              const InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 60.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 58.0,
                    // child: ClipOval(child: (_image != null)
                    // ? Image.file(_image): Image.asset('images/newimage.png'),),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Ajay k K",
                  style: TextStyle(fontSize: 17, color: kWhite),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Username",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              kHeight20,
              const Text(
                "Personal",
                style: TextStyle(
                    fontSize: 15,
                    color: baackgroundYellowColor,
                    fontWeight: FontWeight.bold),
              ),
              kHeight,
              TextFormField(
                decoration: InputDecoration(
                  fillColor: kWhite,
                  prefixIcon: const Icon(Icons.email),
                  hintText: "Email",
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              kHeight,
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone_android),
                  fillColor: kWhite,
                  hintText: "Phone number",
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              kHeight,
              const Text(
                "Company",
                style: TextStyle(
                    fontSize: 15,
                    color: baackgroundYellowColor,
                    fontWeight: FontWeight.bold),
              ),
              kHeight,
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  fillColor: kWhite,
                  hintText: "Company mail",
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              kHeight,
              const Text(
                "Emergency",
                style: TextStyle(
                    fontSize: 15,
                    color: baackgroundYellowColor,
                    fontWeight: FontWeight.bold),
              ),
              kHeight,
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone_android),
                  fillColor: kWhite,
                  hintText: "Emergency contact",
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              kHeight20,
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(primary: baackgroundYellowColor),
                child: const Text("Update"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
