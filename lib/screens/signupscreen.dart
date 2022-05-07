import 'package:flutter/material.dart';
import 'package:repairapp/widgets/bluebutton.dart';
import 'package:repairapp/widgets/whitetextfield.dart';
import 'package:repairapp/widgets/whitemediabutton.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 65, right: 65, top: 130, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/repair_logo_blue.png",
                    width: 300,
                    height: 100,
                  ),
                  const Text(
                    "REPAIR HOME",
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xff1F319D),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Create new account",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(
              hinttext: "Email",
            ),
            const SizedBox(
              height: 25,
            ),
            const AppTextField(
              hinttext: "Password",
              obscuretext: true,
            ),
            const SizedBox(
              height: 25,
            ),
            const AppTextField(
              hinttext: "Confirm password",
              obscuretext: true,
            ),
            const SizedBox(
              height: 25,
            ),
            BlueButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
              color: const Color(0xff1F319D),
              title: "Sign up",
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                ". Or sign up with -",
                style: TextStyle(
                  color: Color(0xff1B1B1D),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                WhiteMediaButton(
                  url: "assets/images/google_logo.png",
                ),
                SizedBox(
                  width: 15,
                ),
                WhiteMediaButton(
                  url: "assets/images/facebook_logo.png",
                ),
                SizedBox(
                  width: 15,
                ),
                WhiteMediaButton(
                  url: "assets/images/twitter_logo.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
