import 'package:flutter/material.dart';
import 'package:uipractice_2/widgets/intro/splash/builddot_widget.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';
import '../../theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                  (index) => BuildDot(index: index, currentPage: currentPage),
                ),
              ),
            ),
            // Continue Button
            Positioned(
                top: h * 0.8,
                width: w,
                child: DefaultButton(
                  width: 0.04,
                  txt: 'متابعة',
                  btncolor: mainColor,
                ))
          ],
        ),
      ),
    );
  }
}

// Continue Button funtion

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
