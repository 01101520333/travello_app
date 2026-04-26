import 'package:flutter/material.dart';
import 'package:travello_app/widgets/text_form_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String registerScreenRoute = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              "Get Started",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: Color(0xff252525),
              ),
            ),

            Text(
              "by creating a free account.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xff252525),
              ),
            ),
            SizedBox(height: 40),
            TextFormFieldWidget(
              titel: "Full name",
              iconPath: "assets/icons/user_icon.png",
            ),

            SizedBox(height: 12),
            TextFormFieldWidget(
              titel: "Valid email",
              iconPath: "assets/icons/email_icon.png",
            ),

            SizedBox(height: 12),
            TextFormFieldWidget(
              titel: "Phone number",
              iconPath: "assets/icons/phone_icon.png",
            ),

            SizedBox(height: 12),
            TextFormFieldWidget(
              titel: "password",
              iconPath: "assets/icons/passwered_icon.png",
            ),
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
                  "By checking the box you agree to our Terms and Conditions",
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff252525),
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
                Navigator.of(context).pop();
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
                Navigator.of(context).pop();
              },
              child: Text.rich(
                TextSpan(
                  text: "Already a member?",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: .w500,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: "Login in",
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
