import 'package:flutter/material.dart';
import 'package:note_app/views/Custom_AppBar.dart';
import 'package:note_app/views/Custom_list_view.dart';

// ignore: camel_case_types
class notes_view_body extends StatelessWidget {
  const notes_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
