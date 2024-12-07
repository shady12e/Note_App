import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_text_fild.dart';
import 'package:note_app/customs/customs_elevted_bottom.dart';

class Modelsheet extends StatefulWidget {
  const Modelsheet({super.key});

  @override
  State<Modelsheet> createState() => _ModelsheetState();
}

class _ModelsheetState extends State<Modelsheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: SizedBox(
            height: 550,
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
                  height: 110,
                ),
                CustomElevatedBottom(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
