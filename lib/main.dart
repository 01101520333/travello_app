import 'package:flutter/material.dart';
import 'package:travello_app/screens/home_screen.dart';
import 'package:travello_app/screens/log_in_screen.dart';
import 'package:travello_app/screens/regester_screen.dart';
import 'package:travello_app/screens/splasher_screen.dart';

void main() {
  runApp(const TravelloApp());
}

class TravelloApp extends StatelessWidget {
  const TravelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splasher(),

      initialRoute: Splasher.splasherRoute,
      routes: {
        Splasher.splasherRoute: (context) => Splasher(),
        LogInScreen.logInScreenRoute: (context) => LogInScreen(),
        RegisterScreen.registerScreenRoute: (context) => RegisterScreen(),
        HomeScreen.homeScreenRoute: (context) => HomeScreen(),
      },
    );
  }
}
