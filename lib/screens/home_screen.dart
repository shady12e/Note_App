import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_home_body.dart';
import 'package:note_app/widget/wigdet_model_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomescreenBody(),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Modelsheet();
              },
            );
          },
          backgroundColor: const Color.fromARGB(255, 96, 183, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: const Icon(
            Icons.add,
            size: 35,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
