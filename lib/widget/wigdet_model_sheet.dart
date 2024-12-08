import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_cubit.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_state.dart';

import 'package:note_app/widget/add_note_form_state.dart';

class Modelsheet extends StatelessWidget {
  const Modelsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNewCubitCubit, AddNewCubitState>(
          listener: (context, state) {
            if (state is AddNewCubitFuiler) {
              print('failled ${state.errMassage}');
            }
            if (state is AddNewCubitSucceful) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNewCubitLouding ? true : false,
              child: const AddNoteFormState(),
            );
          },
        ),
      ),
    );
  }
}
