import 'package:flutter/material.dart';
import 'package:note_app/views/custom_text_field.dart';

class AddNotesButtom extends StatelessWidget {
  const AddNotesButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
