import 'package:flutter/material.dart';
import 'package:uipractice_2/pages/splash%20screens/splash_screen.dart';
import 'package:uipractice_2/theme.dart';
import 'package:uipractice_2/widgets/general/loading_widget.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    navigateAfterCounter();
  }

  navigateAfterCounter() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(height: h * .45),
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: w * .06),
            child: Text(
              "أطلب",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: h * .17),
        Center(
          child: Loading(
            height: h * .2,
            width: h * .2,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
