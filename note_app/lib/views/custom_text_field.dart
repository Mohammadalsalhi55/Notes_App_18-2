import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxlines = 1,
      this.onSaved,
      this.onChanged});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: hint,
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
