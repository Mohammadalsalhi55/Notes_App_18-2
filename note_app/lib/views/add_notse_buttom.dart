import 'package:flutter/material.dart';
import 'package:note_app/views/custom_text_field.dart';

class AddNotesButtom extends StatelessWidget {
  const AddNotesButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
