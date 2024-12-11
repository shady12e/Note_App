import 'package:flutter/material.dart';

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

  List<Color> colors = const [
    Color(0xffDBD3AD),
    Color(0xffE0607E),
    Color(0xffD36060),
    Color(0xffC2714F),
    Color(0xffF6C5AF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 7,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorCircle(
              color: colors[index],
              isActiv: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
