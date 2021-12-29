import 'package:flutter/material.dart';

import 'package:uipractice_2/widgets/general/loading_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(height: h * .45),
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: w * .06),
            child: Text(
              "أطلب",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
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
