import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class peremium extends StatelessWidget {
  const peremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.crown,
          color: Colors.orange,
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Premium",
          style: TextStyle(color: Colors.orange, fontSize: 18),
        )
      ],
    );
  }
}
