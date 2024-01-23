// ignore_for_file: prefer_const_constructors

import 'package:ccoffee/constant.dart';
import 'package:ccoffee/models/Coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key, required this.coffee});
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    var titlehigh = 120.0;
    return SizedBox(
      height: titlehigh,
      child: Row(
        children: [
          getImage(titlehigh),
          coffeeDetiles(),
          Spacer(),
          plusicon()
        ],
      ),
    );
  }

  Container plusicon() {
    return Container(
          height: 25,
          width: 25,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: orangeColor, borderRadius: BorderRadius.circular(5)),
          child: Image.asset(
            "assets/icons/plus.png",
            color: Colors.white,
          ),
        );
  }

  Padding coffeeDetiles() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: padding, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          boldText(coffee.name),
          Spacer(),
          Text(
            coffee.smallDescription,
            style: TextStyle(
                fontSize: 16, color: greyColor, fontWeight: FontWeight.w500),
          ),
          Spacer(
            flex: 5,
          ),
          boldText(coffee.price)
        ],
      ),
    );
  }

  Text boldText(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
    );
  }

  Container getImage(double titlehigh) {
    return Container(
      height: titlehigh,
      width: titlehigh,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(coffee.image))),
    );
  }
}
