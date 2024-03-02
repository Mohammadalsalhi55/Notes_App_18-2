import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/Notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const Notes_App());
}

// ignore: camel_case_types
class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const notes_view(),
    );
  }
}
