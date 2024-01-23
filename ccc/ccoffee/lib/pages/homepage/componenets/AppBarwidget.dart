// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ccoffee/constant.dart';
import 'package:flutter/material.dart';

class AppBarwi extends StatelessWidget {
  const AppBarwi({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/background.png'))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: padding, right: padding, top: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/icons/menu.png",
                color: Colors.white,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                        text: "it's a Great ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300),
                        children: [
                      TextSpan(
                          text: "Day for \n Coffee",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
