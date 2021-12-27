// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Introscreen extends StatefulWidget {
  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  int currentPage = 0;

  final List<Map<String, String>> splashData = [
    {'text': 'إطلب من أفضل المطاعم', 'image': 'assets/images/splash_1.PNG'},
    {'text': 'أفضل الوجبات و الحلويات', 'image': 'assets/images/splash_2.PNG'},
    {'text': 'خدمة توصيل سريعة', 'image': 'assets/images/splash_3.PNG'},
  ];

  ///  WELL DONE OVERALL. Liked the animation and the code is well orginized
  /// Just a few tips :)
  /// check the comments below

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SizedBox(height: 500), // why is this for ?!!
            PageView.builder(
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
            Positioned(
              top: h * 0.53,
              width: w, // w * 1 is just w -_-
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length,
                  (index) => buildDot(index = index),
                ),
              ),
            ),
            // continue button better be fixed not moving with the page view
            Positioned(
                top: h * 0.8,
                width: w,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: w * .05),
                  width: w * 0.9,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'متابعة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(
          horizontal:
              5), // using symmetric is always better than left and right
      height: currentPage == index ? 6 : 5,
      width: currentPage == index ? 12 : 5,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.amber : Colors.grey,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                image!,
                height: 300,
                width: 300,
              ),
              SizedBox(
                height:
                    70, // just thought it's better like this , also it's safer to use MediaQuery alwaaays because responsiveness can be a pain in the ass
              ),
              Padding(
                padding: EdgeInsets.only(
                    right:
                        20.0), // arabic text is not aligned well in flutter it always flank to the right
                child: Text(
                  text!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 110,
        ),
      ],
    );
  }
}
