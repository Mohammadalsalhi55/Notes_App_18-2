import 'package:flutter/material.dart';
import 'package:note_app/views/Custom_AppBar.dart';
import 'package:note_app/views/custom_text_field.dart';

class Editnewview extends StatelessWidget {
  const Editnewview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Content",
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
