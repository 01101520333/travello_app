import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.titel,
    required this.iconPath,
    this.onTap,
  });
  final TextEditingController? controller = TextEditingController();
  final String titel;
  final String iconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,

      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffEFEFEF),
        hint: Text(titel),
        suffixIcon: Image.asset(iconPath),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFF3951)),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
