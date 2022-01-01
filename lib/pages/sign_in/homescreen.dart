import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uipractice_2/widgets/intro/builddot_widget.dart';

import '../../theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {'image': 'assets/images/splash_1.PNG'},
    {'image': 'assets/images/splash_2.PNG'},
    {'image': 'assets/images/splash_3.PNG'},
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: h * 0.02,
                horizontal: w * 0.010,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: w * 0.030),
                    width: w * 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                height: h * 0.05,
                                width: w * 0.10,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: secColor,
                                    borderRadius: BorderRadius.circular(7)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: h * 0.025,
                                    color: mainColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: h * 0.0350,
                                right: w * 0.001,
                                child: Container(
                                  height: h * 0.015,
                                  width: w * 0.04,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'التوصيل الى',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: h * 0.030,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Makkah',
                                    style: TextStyle(
                                        color: mainColor, fontSize: h * 0.030),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: h * 0.05,
                                    color: mainColor,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: h * 0.05,
                          width: w * 0.06,
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              size: h * 0.03,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.030,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: h * 0.030,
                        ),
                        Container(
                          height: h * 0.2,
                          width: w,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/header_photo.jpg'),
                                fit: BoxFit.fitWidth),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: w * 0.05, bottom: h * 0.015),
                            child: Text(
                              'طعام',
                              style: TextStyle(
                                fontSize: h * 0.03,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.030,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: w * 0.035),
                          child: Text(
                            'ما هو طلبك؟',
                            style: TextStyle(
                              fontSize: h * 0.03,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.010,
                        ),
                        Container(
                          height: h * 0.2,
                          width: w,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.elliptical(150, 200),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/header_photo.jpg'),
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.030,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) => BuildDot(
                              index: 1,
                              currentPage: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.040,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: w * 0.005),
                          child: Text(
                            'المطاعم القريبة',
                            style: TextStyle(
                              fontSize: h * 0.03,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: h * 0.25,
                          child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (value) {
                              setState(() {
                                currentPage = value;
                              });
                            },
                            itemCount: splashData.length,
                            itemBuilder: (context, index) => SplashContent(
                              image: splashData[index]['image'],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: w * 0.035),
                          child: Text(
                            'الحلويات',
                            style: TextStyle(
                              fontSize: h * 0.03,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(
              5,
              (index) => Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: Colors.black
                      //   image: DecorationImage(image: AssetImage(image!), fit: BoxFit.fill),
                      ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text('data'),
                    ),
                    Text('data')
                  ],
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
