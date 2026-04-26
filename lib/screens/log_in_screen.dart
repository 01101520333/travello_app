import 'package:flutter/material.dart';
import 'package:travello_app/screens/home_screen.dart';
import 'package:travello_app/screens/regester_screen.dart';
import 'package:travello_app/widgets/text_form_field_widget.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  static const String logInScreenRoute = "LogInScreen";
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool? checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40),

            Image.asset("assets/images/logo.png", height: 150, width: 200),
            SizedBox(height: 26),

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
            SizedBox(height: 80),
            TextFormFieldWidget(
              titel: "Enter your email",
              iconPath: "assets/icons/email_icon.png",
            ),
            SizedBox(height: 12),
            TextFormFieldWidget(
              titel: "password",
              iconPath: "assets/icons/passwered_icon.png",
            ),
            Row(
              children: [
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue;
                        });
                      },
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff252525),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFF3951),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: .min,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.homeScreenRoute);
              },
              padding: EdgeInsets.symmetric(vertical: 13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color(0xffFF3951),
              minWidth: double.infinity,
              child: Text(
                "Next >",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: .w500,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(RegisterScreen.registerScreenRoute);
              },
              child: Text.rich(
                TextSpan(
                  text: "New member ? ",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: .w500,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: "Register now",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: .w500,
                        color: Color(0xffFF3951),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
