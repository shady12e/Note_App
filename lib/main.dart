import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(knotesBox);

  Hive.registerAdapter(NoteModelAdapter());

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
        fontFamily: kfontFamily,
      ),
      routes: {
        'HomeScreen': (context) => const HomeScreen(),
      },
      initialRoute: 'HomeScreen',
    );
  }
}
