import 'package:flutter/material.dart';
import 'package:note_app/views/Notes_view.dart';

void main() {
  runApp(const Notes_App());
}

// ignore: camel_case_types
class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const notes_view(),
    );
  }
}
