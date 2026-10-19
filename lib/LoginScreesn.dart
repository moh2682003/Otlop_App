import 'package:flutter/material.dart';
import 'package:otlop_app/HeaderRegister.dart';
import 'package:otlop_app/RegisterScreen.dart';
import 'package:otlop_app/RemberRow.dart';
import 'package:otlop_app/SocialLoginSection%20.dart';
import 'package:otlop_app/customElvetdButton.dart';
import 'package:otlop_app/getUserInfo.dart';

class clsLoginScreen extends StatelessWidget {
  const clsLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            clsHeaderMessage(
              mainText: "   Hi, Wecome Back! 👋",
              supText: "Hello again, you’ve been missed!",
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  clsUserInfo(TextLab: "name", hintText: "Enter Name"),
                  clsUserInfo(TextLab: "PassWord", hintText: "Enter PassWord"),
                ],
              ),
            ),
            clsRemmberMeRow(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: clsCustomElvetdButton(BText: "Log in", onPressed: () {}),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: clsSocialLoginSection(
                maiText: "Sign Up",
                supText: "Don’t have an account ?",
                onPressedLink: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const clsRegisterScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
