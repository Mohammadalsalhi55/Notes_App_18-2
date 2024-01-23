// ignore_for_file: file_names, unused_local_variable, prefer_const_constructors

import 'package:ccoffee/constant.dart';
import 'package:ccoffee/models/Coffee.dart';
import 'package:ccoffee/pages/homepage/componenets/AppBarwidget.dart';
import 'package:ccoffee/pages/homepage/componenets/coffee_drink.dart';
import 'package:ccoffee/pages/homepage/componenets/custom_search.dart';
import 'package:ccoffee/pages/homepage/componenets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var appbar = size.height / 3;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: size.height,
          ),
          AppBarwi(
            height: appbar,
          ),
          Positioned(
            top: appbar - 25,
            child: Container(
              padding: EdgeInsets.all(padding),
              height: size.height - appbar + 25,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                      Column(
                        children: [
                          Customtabbar(),
                        ],
                      ),
                      SizedBox(
                        height: padding,
                      ),
                      CustomSearchBar(),
                    ] +
                    coffees.map((e) => CoffeeTile(coffee: e)).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
