import 'package:flutter/material.dart';

const mainColor = Color.fromRGBO(255, 207, 27, 1);
const secColor = Color.fromRGBO(255, 245, 209, 0.6);
const thirdColor = Color.fromRGBO(255, 223, 103, 1);
const fourthColor = Colors.grey;
const lineargradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.white, Colors.transparent],
);
ThemeData maintheme() {
  return ThemeData(
    fontFamily: "Tajawal",
    primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.red)),
  );
}
