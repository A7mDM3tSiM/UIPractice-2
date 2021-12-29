import 'package:flutter/material.dart';

import '../../theme.dart';

class Otpsquares extends StatelessWidget {
  const Otpsquares({
    Key? key,
    required this.width,
    required this.height,
    this.color = Colors.white,
  }) : super(key: key);

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        height: MediaQuery.of(context).size.height * height,
        width: MediaQuery.of(context).size.width * width,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.015),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 4),
          child: TextFormField(
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              cursorColor: mainColor,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: '',
                  fillColor: Colors.amber)),
        ),
      ),
    );
  }
}
