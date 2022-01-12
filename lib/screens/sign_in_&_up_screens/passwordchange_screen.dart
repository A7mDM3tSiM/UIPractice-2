import 'package:flutter/material.dart';
import 'package:uipractice_2/theme.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';
import 'package:uipractice_2/widgets/general/textfieldsdecoratios_widget.dart';

import 'otp_passwordchange_screen.dart';

class Passwordchange extends StatefulWidget {
  const Passwordchange({Key? key}) : super(key: key);

  @override
  _PasswordchangeState createState() => _PasswordchangeState();
}

class _PasswordchangeState extends State<Passwordchange> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

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
            TextFieldsdecoratios(
              hintTxt: 'رقم الهاتف',
              pass: false,
              width: 0.9,
            ),
            SizedBox(height: h * 0.08),
            DefaultButton(
              txt: 'متابعة',
              btncolor: mainColor,
              width: 0.9,
              func: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OtpPasswordChange()));
              },
            )
          ],
        ),
      ),
    );
  }
}
