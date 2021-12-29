// ignore_for_file: unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uipractice_2/theme.dart';
import 'package:uipractice_2/pages/splash%20screens/loading.dart';
import 'package:uipractice_2/pages/splash%20screens/splash_screen.dart';
import 'package:uipractice_2/pages/sign_in/sign_in_screen.dart';
import 'package:uipractice_2/widgets/general/loading_widget.dart';

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
      home: LoadingScreen(),
    );
  }
}
