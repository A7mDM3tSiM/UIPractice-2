import 'package:flutter/material.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amber,
          accentColor: Colors.amber[200],
          scaffoldBackgroundColor: Colors.white,
          // ignore: deprecated_member_use
          primaryTextTheme:
              TextTheme(bodyText1: TextStyle(color: Colors.black))),
      home: SplashScreen(),
    );
  }
}
