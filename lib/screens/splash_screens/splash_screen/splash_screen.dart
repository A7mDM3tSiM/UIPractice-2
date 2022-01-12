import 'package:flutter/material.dart';

import 'package:uipractice_2/screens/splash_screens/splash_screen/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
