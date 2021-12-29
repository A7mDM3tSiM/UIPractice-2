import 'package:flutter/material.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';
import 'package:uipractice_2/widgets/general/textfieldsdecoratios_widget.dart';
import 'package:uipractice_2/widgets/login/imagefade_widget.dart';

import '../../theme.dart';

class RegistorScreen extends StatefulWidget {
  const RegistorScreen({Key? key}) : super(key: key);

  @override
  _RegistorScreenState createState() => _RegistorScreenState();
}

class _RegistorScreenState extends State<RegistorScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Imagefade(h: h * 0.3, img: "assets/images/header_photo.jpg"),
            Column(
              children: [
                SizedBox(
                  height: h * 0.32,
                ),
                Center(
                  child: Container(
                    width: w * 0.2,
                    height: w * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        border: Border.all(width: 1, color: mainColor)),
                    child: Center(
                      child: Icon(
                        Icons.image_search_rounded,
                        color: mainColor,
                        size: w * 0.07,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * .05,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFieldsdecoratios(
                          hintTxt: "الإسم", prefixtxt: "", pass: false),
                      SizedBox(
                        height: h * .05,
                      ),
                      TextFieldsdecoratios(
                          hintTxt: "رقم الهاتف",
                          prefixtxt: "+249",
                          pass: false),
                      SizedBox(
                        height: h * .05,
                      ),
                      TextFieldsdecoratios(
                          hintTxt: "كلمة المرور", prefixtxt: "", pass: true),
                      SizedBox(height: h * 0.02),
                      GestureDetector(
                        onTap: () {
                          print('hi'); //put something here
                        },
                        child: Text(
                          'نسيت كلمة المرور ؟',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: fourthColor[900],
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      Container(
                        height: h * 0.065,
                        width: w,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "إنشاء حساب ",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('hi'); //put something here
                        },
                        child: RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '  لديك حساب؟  ',
                                style: TextStyle(
                                    color: fourthColor[900],
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                  text: 'تسجيل دخول',
                                  style: TextStyle(
                                      color: thirdColor,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
