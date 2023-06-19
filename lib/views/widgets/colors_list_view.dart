import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int current = 0;
  Color? currentColor;
  List<Color> colors = const [
    Color(0xff0079FF),
    Color(0xff00DFA2),
    Color(0xffF6FA70),
    Color(0xffFF0060),
    Color(0xff40128B),
    Color(0xff40128B),
    Color(0xffDD58D6),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                current = index;
                currentColor = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: current == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
