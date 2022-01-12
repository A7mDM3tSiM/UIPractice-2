import 'package:flutter/material.dart';
import 'package:uipractice_2/screens/sign_in_&_up_screens/passwordchange_screen.dart';
import 'package:uipractice_2/screens/sign_in_&_up_screens/registor_screen.dart';
import 'package:uipractice_2/widgets/login/imagefade_widget.dart';
import 'package:uipractice_2/widgets/general/textfieldsdecoratios_widget.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';
import '../../../../theme.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Imagefade(
              h: h * 0.38,
              img: 'assets/images/header_photo.jpg',
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextFieldsdecoratios(
                    hintTxt: 'رقم الهاتف',
                    prefixtxt: '+249',
                    width: 20,
                    pass: false,
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  TextFieldsdecoratios(
                    hintTxt: 'كلمة السر',
                    prefixtxt: 'icon',
                    width: 20,
                    pass: true,
                  ),
                  SizedBox(height: h * 0.03),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Passwordchange()));
                    },
                    child: Text(
                      'نسيت كلمة المرور ؟',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: fourthColor[900], fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DefaultButton(
                  //need to edit the default btn on intro.dart to do function....
                  width: 0.9,
                  txt: 'تسجيل دخول',
                  btncolor: mainColor,
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.06),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistorScreen()));
                    },
                    child: RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '   ليس لديك حساب؟  ',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                              text: 'إنشاء حساب ',
                              style: TextStyle(
                                  color: thirdColor,
                                  fontWeight: FontWeight.w800))
                        ],
                      ),
                    ),
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
