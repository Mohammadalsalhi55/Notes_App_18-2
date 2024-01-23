// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ggg/constant.dart';
import 'package:ggg/pages/Home/widgets/bbbb.dart';

class BottomAppBarr extends StatelessWidget {
  const BottomAppBarr({super.key});

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 60,
        decoration: BoxDecoration(
            color: navBarcolor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
      ),
      Positioned.fill(
        top: -25,
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              neww(
                icon: 'assets/home.png',
                home: 'home',
                isselect: index == 0,
              ),
              SizedBox(
                width: 48,
              ),
              neww(
                icon: 'assets/search.png',
                home: 'search',
                isselect: index == 1,
              ),
              SizedBox(
                width: 48,
              ),
              neww(
                icon: 'assets/premium.png',
                home: 'premium',
                isselect: index == 2,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
