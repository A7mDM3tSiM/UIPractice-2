import 'package:flutter/material.dart';
import 'package:uipractice_2/theme.dart';
import 'package:uipractice_2/widgets/OTP/otpsquares.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';

import 'newpassword.dart';

class OtpPasswordChange extends StatefulWidget {
  const OtpPasswordChange({Key? key}) : super(key: key);

  @override
  _OtpPasswordChangeState createState() => _OtpPasswordChangeState();
}

class _OtpPasswordChangeState extends State<OtpPasswordChange> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'تغير كلمة المرور',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: h * 0.30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Otpsquares(height: 0.08, width: 0.15, color: secColor),
                Otpsquares(height: 0.08, width: 0.15, color: secColor),
                Otpsquares(height: 0.08, width: 0.15, color: secColor),
                Otpsquares(height: 0.08, width: 0.15, color: secColor),
              ],
            ),
            SizedBox(height: h * 0.075),
            DefaultButton(
              func: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewPasswordScreen()));
              },
              txt: 'متابعة',
              btncolor: mainColor,
              width: 0.75,
            )
          ],
        ),
      ),
    );
  }
}
