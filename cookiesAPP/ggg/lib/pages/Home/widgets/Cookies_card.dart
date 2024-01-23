// ignore_for_file: file_names, unused_import, unused_local_variable, camel_case_types, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggg/constant.dart';
import 'package:ggg/models/cookiesPP.dart';
import 'package:ggg/pages/Home/widgets/container_arrow.dart';
import 'package:ggg/pages/Home/widgets/permium.dart';

class cookieCard extends StatelessWidget {
  const cookieCard({super.key, required this.cookie});
  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookiehigh = size.height * 0.16;
    var cardhigh = size.height * 0.20;

    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: cardhigh,
        width: cardhigh,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            )),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 32, right: 32, bottom: 16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                peremium(),
                Text(
                  cookie.price,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
      Positioned(
        top: -(cookiehigh - 32),
        left: (cardhigh - cookiehigh) / 2,
        child: SizedBox(
          height: cookiehigh,
          width: cookiehigh,
          child: Image.asset(cookie.image),
        ),
      ),
      Positioned(right: 0, bottom: 0, child: ContainerArrow()),
    ]);
  }
}
