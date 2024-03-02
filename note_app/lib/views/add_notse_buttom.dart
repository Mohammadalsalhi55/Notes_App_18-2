import 'package:flutter/material.dart';
import 'package:note_app/views/Custom_buttom.dart';
import 'package:note_app/views/custom_text_field.dart';

class AddNotesButtom extends StatelessWidget {
  const AddNotesButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddnoteForm(),
      ),
    );
  }
}

class AddnoteForm extends StatefulWidget {
  const AddnoteForm({
    super.key,
  });

  @override
  State<AddnoteForm> createState() => _AddnoteFormState();
}

class _AddnoteFormState extends State<AddnoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomButtom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
