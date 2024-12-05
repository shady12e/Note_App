import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_edit_note_view_body.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Fultter Tips',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Bulid your own dream with shady essam',
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
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
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'may 21 , 2022',
                    style: TextStyle(
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
