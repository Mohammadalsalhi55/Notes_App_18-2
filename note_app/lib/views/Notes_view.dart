// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:note_app/views/Notes_view_body.dart';
import 'package:note_app/views/add_notse_buttom.dart';

// ignore: camel_case_types
class notes_view extends StatelessWidget {
  const notes_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNotesButtom();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const notes_view_body(),
    );
  }
}
