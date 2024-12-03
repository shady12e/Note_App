import 'package:flutter/material.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/screens/home_screen.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: KfontFamily,
      ),
      routes: {
        'HomeScreen': (context) => const HomeScreen(),
      },
      initialRoute: 'HomeScreen',
    );
  }
}
