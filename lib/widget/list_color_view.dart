import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/cubits/add_new_cubit/add_new_cubit_cubit.dart';

class ColorCircle extends StatelessWidget {
  const ColorCircle({
    super.key,
    required this.isActiv,
    required this.color,
  });

  final bool isActiv;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActiv
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 33,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 35,
          );
  }
}

class ListColorCircle extends StatefulWidget {
  const ListColorCircle({super.key});

  @override
  State<ListColorCircle> createState() => _ListColorCircleState();
}

class _ListColorCircleState extends State<ListColorCircle> {
  int currentIndex = 0;

 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 7,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNewCubitCubit>(context).color = kcolors[index];

              setState(() {});
            },
            child: ColorCircle(
              color: kcolors[index],
              isActiv: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
