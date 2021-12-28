// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class Introscreen extends StatefulWidget {
  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  int currentPage = 0;
  //PageView builder Data
  List<Map<String, String>> splashData = [
    {'text': 'إطلب من أفضل المطاعم', 'image': 'assets/images/splash_1.PNG'},
    {'text': 'أفضل الوجبات و الحلويات', 'image': 'assets/images/splash_2.PNG'},
    {'text': 'خدمة توصيل سريعة', 'image': 'assets/images/splash_3.PNG'},
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
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
            //The Dots
            Positioned(
              top: h * 0.53,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length,
                  (index) => buildDot(index = index),
                ),
              ),
            ),
            // Continue Button
            Positioned(
                top: h * 0.8,
                width: w,
                child: Default_Button(
                  txt: 'متابعة',
                  btncolor: Colors.amber,
                ))
          ],
        ),
      ),
    );
  }

//The Dots Function
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

// Continue Button funtion
class Default_Button extends StatelessWidget {
  const Default_Button({
    Key? key,
    required this.txt,
    required this.btncolor,
  }) : super(key: key);

  final String txt;
  final Color btncolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(
        onPressed: () {},
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25.0,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: btncolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}

//Spalash Function
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
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
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
