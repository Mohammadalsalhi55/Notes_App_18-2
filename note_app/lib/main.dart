import 'package:flutter/material.dart';

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
      theme: ThemeData.dark(),
      home: Scaffold(),
    );
  }
}
