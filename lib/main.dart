import 'package:flutter/material.dart';
import 'package:repairapp/screens/cartscreen.dart';
import 'package:repairapp/screens/landingpage.dart';
import 'package:repairapp/screens/loginscreen.dart';
import 'package:repairapp/screens/microwavescreen.dart';
import 'package:repairapp/screens/signupscreen.dart';
import 'package:repairapp/screens/splashscreen.dart';

void main() {
  runApp(const RepairHome());
}

class RepairHome extends StatelessWidget {
  const RepairHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      title: "Repair Home",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const LoginScreen(),
        '/third': (context) => const SignUpScreen(),
        '/fourth': (context) => const LandingPage(),
        '/fifth': (context) => const MicrowaveScreen(),
        '/sixth': (context) => const CartScreen(),
      },
    );
  }
}
