import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/widget/wigdet_edit_note_view_body.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    final String noteDate = note.date;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteViewBody();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(right: 10, left: 20, bottom: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      note.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    note.subtitle,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 86, 85, 85),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 29),
                  child: IconButton(
                    onPressed: () {
                      // the bottom that i deleted on it
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 36,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    DateFormat('MMM dd, yyyy').format(DateTime.parse(noteDate)),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 86, 85, 85),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
