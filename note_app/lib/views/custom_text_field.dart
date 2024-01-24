import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: kprimarycolor),
        border: buildboarder(),
        enabledBorder: buildboarder(),
        focusedBorder: buildboarder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildboarder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
