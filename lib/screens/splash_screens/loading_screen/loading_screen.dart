import 'package:flutter/material.dart';

import 'package:uipractice_2/screens/splash_screens/loading_screen/components/body.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
