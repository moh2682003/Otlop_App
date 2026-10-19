import 'package:flutter/material.dart';
import 'package:otlop_app/HeaderRegister.dart';
import 'package:otlop_app/HomeScreen.dart';
import 'package:otlop_app/LoginScreesn.dart';
import 'package:otlop_app/RemberRow.dart';
import 'package:otlop_app/SocialLoginSection%20.dart';
import 'package:otlop_app/customElvetdButton.dart';
import 'package:otlop_app/getUserInfo.dart';

class clsRegisterScreen extends StatelessWidget {
  const clsRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 25.0,
            right: 25.0,
            bottom: 25.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              clsHeaderMessage(
                mainText: "Create an account",
                supText: "Connect with your friends today!",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  clsUserInfo(TextLab: "Name", hintText: "enter your name"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  clsUserInfo(
                    TextLab: "Email Address",
                    hintText: "enter your Email",
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  clsUserInfo(
                    TextLab: "Phone Number",
                    hintText: "Enter your phone",
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  clsUserInfo(
                    TextLab: "PassWord",
                    hintText: "Please Enter Your Password",
                  ),
                ],
              ),
              clsRemmberMeRow(),

              clsCustomElvetdButton(
                BText: "Sign Up",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const clsHomeScreen(),
                    ),
                  );
                },
              ),
              clsSocialLoginSection(
                maiText: "login",
                supText: "Already have an account ?",
                onPressedLink: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const clsLoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
