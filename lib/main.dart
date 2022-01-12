import 'package:flutter/material.dart';
import 'package:uipractice_2/screens/sign_in_&_up_screens/sign_in/sign_in_screen.dart';

import 'package:uipractice_2/screens/splash_screens/loading_screen/loading_screen.dart';
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
      home: SigninScreen(),
    );
  }
}
