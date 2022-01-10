import 'package:flutter/material.dart';
import 'package:uipractice_2/sizeconfig.dart';

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
                height: getProportionateScreenHeight(20),
              ),
              Image.asset(
                image!,
                height: getProportionateScreenHeight(400),
                width: getProportionateScreenWidth(320),
              ),
              SizedBox(
                height: getProportionateScreenHeight(70),
              ),
              Padding(
                padding: text == 'خدمة توصيل سريعة'
                    ? EdgeInsets.only(left: getProportionateScreenWidth(25))
                    : EdgeInsets.only(
                        right: getProportionateScreenWidth(20),
                      ),
                child: Text(
                  text!,
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(25),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
