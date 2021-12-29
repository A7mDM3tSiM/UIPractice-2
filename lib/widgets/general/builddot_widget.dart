//The Dots Function
import 'package:flutter/material.dart';
import 'package:uipractice_2/theme.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({Key? key, required this.index, required this.currentPage})
      : super(key: key);
  final int index, currentPage;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(
          horizontal:
              5), // using symmetric is always better than left and right
      height: currentPage == index ? 6 : 5,
      width: currentPage == index ? 12 : 5,
      decoration: BoxDecoration(
        color: currentPage == index ? mainColor : fourthColor,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
