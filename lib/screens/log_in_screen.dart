import 'package:flutter/material.dart';
import 'package:travello_app/widgets/text_form_field_widget.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png", height: 150, width: 200),

            Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: Color(0xff252525),
              ),
            ),

            Text(
              "sign in to access your account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xff252525),
              ),
            ),
            TextFormFieldWidget(
              titel: "Enter your email",
              iconPath: "assets/icons/email_icon.png",
            ),

            TextFormFieldWidget(
              titel: "password",
              iconPath: "assets/icons/passwered_icon.png",
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        children: [
          Container(
            height: 50,
            color: Color(0xffFF3951),
            child: Text("Next >"),
          ),
        ],
      ),
    );
  }
}
