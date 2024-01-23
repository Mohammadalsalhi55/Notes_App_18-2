// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class cookiesbar extends StatelessWidget {
  const cookiesbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              "Cookies",
              style: TextStyle(color: Colors.white, fontSize: 42),
            ),
            Text(
              "Premium",
              style: TextStyle(color: Colors.orange, fontSize: 30),
            ),
          ],
        ),
        Text(
          "See more",
          style: TextStyle(color: Colors.orange, fontSize: 16),
        )
      ],
    );
  }
}
