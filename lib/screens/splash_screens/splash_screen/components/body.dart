import 'package:flutter/material.dart';
import 'package:uipractice_2/screens/sign_in_&_up_screens/sign_in/sign_in_screen.dart';

import 'package:uipractice_2/sizeconfig.dart';
import 'package:uipractice_2/theme.dart';

import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';

import 'package:uipractice_2/screens/splash_screens/splash_screen/components/builddot_widget.dart';
import 'package:uipractice_2/screens/splash_screens/splash_screen/components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  //PageView builder Data
  List<Map<String, String>> splashData = [
    {'text': 'إطلب من أفضل المطاعم', 'image': 'assets/images/splash_1.PNG'},
    {'text': 'أفضل الوجبات و الحلويات', 'image': 'assets/images/splash_2.PNG'},
    {'text': 'خدمة توصيل سريعة', 'image': 'assets/images/splash_3.PNG'},
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: getProportionateScreenHeight(525),
                  width: double.infinity,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      text: splashData[index]['text'],
                      image: splashData[index]['image'],
                    ),
                  ),
                ),
                //The Dots
                Positioned(
                  top: h * 0.54,
                  left: getProportionateScreenWidth(170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) =>
                          BuildDot(index: index, currentPage: currentPage),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(125),
            ),
            DefaultButton(
              func: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SigninScreen(),
                  ),
                );
              },
              width: getProportionateScreenWidth(0.8),
              txt: 'متابعة',
              btncolor: mainColor,
            )
          ],
        ),
      ),
    );
  }
}
