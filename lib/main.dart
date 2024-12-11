import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/screens/home_screen.dart';
import 'package:note_app/simple_blo_observes.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserbes();
  
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
          BlocProvider(create:  (context) => NotesCubit(),),
          
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: kfontFamily,
        ),
        routes: {
          'HomeScreen': (context) => const HomeScreen(),
        },
        initialRoute: 'HomeScreen',
      ),
    );
  }
}
