import 'package:flutter/material.dart';
import 'package:ggg/constant.dart';

class neww extends StatelessWidget {
  const neww({
    super.key,
    required this.icon,
    required this.home,
    required this.isselect,
  });
  final String icon;
  final String home;
  final bool isselect;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(shape: BoxShape.circle, color: buttonColor),
        child: Image.asset(icon, color: Colors.white),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        home,
        style: TextStyle(color: isselect ? orange : Colors.grey),
      )
    ]);
  }
}
