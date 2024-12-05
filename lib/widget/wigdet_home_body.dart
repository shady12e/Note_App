import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_app_bar.dart';
import 'package:note_app/widget/wigdet_note_list_view.dart';

class HomescreenBody extends StatelessWidget {
  const HomescreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
