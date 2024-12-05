import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_app_bar.dart';
import 'package:note_app/widget/wigdet_note_list_view.dart';

class HomescreenBody extends StatelessWidget {
  const HomescreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onTap: () {
               print('seacrh');
            },
          ),
        const  SizedBox(
            height: 20,
          ),
          const NotesListView(),
        ],
      ),
    );
  }
}
