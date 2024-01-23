import 'package:flutter/material.dart';

// ignore: camel_case_types
class offerbar extends StatelessWidget {
  const offerbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("Cookies", style: TextStyle(color: Colors.white, fontSize: 42)),
        Text("see more", style: TextStyle(color: Colors.orange, fontSize: 16)),
      ],
    );
  }
}
