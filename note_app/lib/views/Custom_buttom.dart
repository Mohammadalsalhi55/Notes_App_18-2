import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kprimarycolor, borderRadius: BorderRadius.circular(16)),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: const Center(
          child: Text(
        "Add",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}