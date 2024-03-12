import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/views/Custom_AppBar.dart';
import 'package:note_app/views/Custom_list_view.dart';

// ignore: camel_case_types
class notes_view_body extends StatefulWidget {
  const notes_view_body({super.key});

  @override
  State<notes_view_body> createState() => _notes_view_bodyState();
}

class _notes_view_bodyState extends State<notes_view_body> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState;
  }

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
