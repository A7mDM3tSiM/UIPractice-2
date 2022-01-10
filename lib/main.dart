import 'package:flutter/material.dart';
import 'package:uipractice_2/screens/splash%20screens/splash_screen/splash_screen.dart';
import 'package:uipractice_2/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: maintheme(),
      home: SplashScreen(),
    );
  }
}
