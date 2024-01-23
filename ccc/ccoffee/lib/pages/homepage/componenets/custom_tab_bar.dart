// ignore_for_file: dead_code, prefer_const_constructors

import 'package:ccoffee/constant.dart';
import 'package:flutter/material.dart';

class Customtabbar extends StatefulWidget {
  const Customtabbar({super.key});

  @override
  State<Customtabbar> createState() => _CustomtabbarState();
}

class _CustomtabbarState extends State<Customtabbar> {
  final tabs = ["Hot coffee", "Cold coffee", "OTHERS"];
  var select = "Hot coffee";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tabs
          .map(
            (e) => GestureDetector(
              onTap: () => setState(() {
                select = e;
              }),
              child: Text(e, style: e == select ? boldaStyle() : normalStyle()),
            ),
          )
          .toList(),
    );
  }

  TextStyle boldaStyle() {
    return TextStyle(fontWeight: FontWeight.w900, fontSize: 18);
  }

  TextStyle normalStyle() {
    return TextStyle(
        fontWeight: FontWeight.w400, color: greyColor, fontSize: 18);
  }
}
