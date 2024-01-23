// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 85,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "6",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Products",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          )
        ]),
      ),
      Positioned(
        top: -20,
        left: 80 / 4,
        child: Container(
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
