import 'package:flutter/material.dart';
import 'package:travello_app/screens/splasher_screen.dart';

void main() {
  runApp(const TravelloApp());
}

class TravelloApp extends StatelessWidget {
  const TravelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splasher());
  }
}
