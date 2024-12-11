import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_cubit.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_state.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';

import 'package:note_app/widget/add_note_form_state.dart';

class Modelsheet extends StatelessWidget {
  const Modelsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNewCubitCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNewCubitCubit, AddNewCubitState>(
          listener: (context, state) {
            if (state is AddNewCubitFuiler) {
              print('failled ${state.errMassage}');
            }
            if (state is AddNewCubitSucceful) {
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fichinAllNote();
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: AbsorbPointer(
                absorbing: state is AddNewCubitLouding ? true : false,
                child: ModalProgressHUD(
                  inAsyncCall: state is AddNewCubitLouding ? true : false,
                  opacity: 0.2,
                  child: const SingleChildScrollView(child: AddNoteFormState()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
