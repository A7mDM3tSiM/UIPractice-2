import 'package:flutter/material.dart';
import 'package:uipractice_2/theme.dart';
import 'package:uipractice_2/widgets/OTP/otpsquares.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 205, 62, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 30,
              ))
        ],
        elevation: 0.0,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: mainColor,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/header_photo2.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h * 0.30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Otpsquares(height: 0.08, width: 0.15),
                  Otpsquares(height: 0.08, width: 0.15),
                  Otpsquares(height: 0.08, width: 0.15),
                  Otpsquares(height: 0.08, width: 0.15),
                ],
              ),
              SizedBox(height: h * 0.075),
              DefaultButton(
                txt: 'تأكيد',
                btncolor: mainColor,
                width: 0.75,
              )
            ],
          ),
        ),
      ),
    );
  }
}
