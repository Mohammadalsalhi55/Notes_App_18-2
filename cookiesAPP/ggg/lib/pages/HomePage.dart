// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ggg/constant.dart';
import 'package:ggg/models/cookiesPP.dart';
import 'package:ggg/pages/Home/widgets/Avatarr.dart';
import 'package:ggg/pages/Home/widgets/Cookies_card.dart';
import 'package:ggg/pages/Home/widgets/bottom.dart';
import 'package:ggg/pages/Home/widgets/carttd.dart';
import 'package:ggg/pages/Home/widgets/cookiess.dart';
import 'package:ggg/pages/Home/widgets/hore_zantol.dart';
import 'package:ggg/pages/Home/widgets/offer_bar.dart';
import 'package:ggg/pages/Home/widgets/personall.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: body(size),
      bottomNavigationBar: BottomAppBarr(),
    );
  }

  Widget body(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Avatar(),
          SizedBox(
            width: 14,
          ),
          personal(),
          Spacer(),
          cart(),
        ]),
        const cookiesbar(),
        SizedBox(
          height: size.height * 0.13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: cookies
              .map(
                (e) => cookieCard(cookie: e),
              )
              .toList(),
        ),
        offerbar(),
        Horizontalppar(),
      ]),
    );
  }
}
