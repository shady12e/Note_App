import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/widget/wigdet_app_bar.dart';
import 'package:note_app/widget/wigdet_note_list_view.dart';

class HomescreenBody extends StatefulWidget {
  const HomescreenBody({super.key});

  @override
  State<HomescreenBody> createState() => _HomescreenBodyState();
}

class _HomescreenBodyState extends State<HomescreenBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fichinAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onTap: () {
              
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const NotesListView(),
        ],
      ),
    );
  }
}
