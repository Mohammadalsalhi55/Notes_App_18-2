// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Noteitems extends StatelessWidget {
  const Noteitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
          color: const Color(0XffFFCC80),
          borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text(
            "Flutter tips",
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              "build your career with mohammad alsalhi",
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.trash,
              size: 24,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "jan 23_2024",
            style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 14),
          ),
        ),
      ]),
    );
  }
}
