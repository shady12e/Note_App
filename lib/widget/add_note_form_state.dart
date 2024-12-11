import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_cubit.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_state.dart';
import 'package:note_app/customs/custom_text_fild.dart';
import 'package:note_app/customs/customs_elevted_bottom.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/widget/list_color_view.dart';

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({
    super.key,
  });

  @override
  State<AddNoteFormState> createState() => AddNoteFormStateState();
}

class AddNoteFormStateState extends State<AddNoteFormState> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextFild(
            validate: (value) {
              if (value?.isEmpty ?? true) {
                return 'This is Requird';
              } else {
                return null;
              }
            },
            onSaved: (date) {
              title = date;
            },
            labelText: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFild(
            validate: (value) {
              if (value?.isEmpty ?? true) {
                return 'This is Requird';
              } else {
                return null;
              }
            },
            onSaved: (date) {
              subtitle = date;
            },
            labelText: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          const ListColorCircle(),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNewCubitCubit, AddNewCubitState>(
            builder: (context, state) {
              return CustomElevatedBottom(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var notesModel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blueAccent.value);
                    BlocProvider.of<AddNewCubitCubit>(context)
                        .addNewNote(notesModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

