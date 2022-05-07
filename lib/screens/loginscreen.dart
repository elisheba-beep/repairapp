import 'package:flutter/material.dart';
import 'package:repairapp/widgets/whitetextfield.dart';
import 'package:repairapp/widgets/bluebutton.dart';
import 'package:repairapp/widgets/whitemediabutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Login to your account",
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
              BlueButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                },
                color: const Color(0xff1F319D),
                title: "Sign in",
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  ". Or sign in with -",
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
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    ". Don't have an account? ",
                    style: TextStyle(
                      color: Color(0xff1B1B1D),
                      fontSize: 16,
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/third",
                        );
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xff1F319D),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
