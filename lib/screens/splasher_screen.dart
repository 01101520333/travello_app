import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travello_app/screens/log_in_screen.dart';

class Splasher extends StatefulWidget {
  const Splasher({super.key});
  static const String splasherRoute = "Splasher";

  @override
  State<Splasher> createState() => _SplasherState();
}

class _SplasherState extends State<Splasher> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return LogInScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF3951),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset("assets/images/logo.png", height: 150, width: 200),
            SizedBox(height: 15),
            Image.asset("assets/images/Travello.png", width: 244, height: 48),
          ],
        ),
      ),
    );
  }
}
