import 'package:flutter/material.dart';
import 'package:note_app/views/Custom_AppBar.dart';

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
        ],
      ),
    );
  }
}
