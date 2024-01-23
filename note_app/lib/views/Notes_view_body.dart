import 'package:flutter/material.dart';
import 'package:note_app/views/Custom_AppBar.dart';

// ignore: camel_case_types
class notes_view_body extends StatelessWidget {
  const notes_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(),
      ],
    );
  }
}
