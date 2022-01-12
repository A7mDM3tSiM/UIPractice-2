import 'package:flutter/material.dart';

import 'package:uipractice_2/sizeconfig.dart';
import 'package:uipractice_2/theme.dart';

import 'package:uipractice_2/screens/splash_screens/splash_screen/splash_screen.dart';

import 'package:uipractice_2/screens/splash_screens/loading_screen/components/loading_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(350),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                right: getProportionateScreenWidth(20),
              ),
              child: Text(
                "أطلب",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(80),
          ),
          Center(
            child: Loading(
              height: getProportionateScreenHeight(250),
              width: getProportionateScreenHeight(250),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
