import 'package:flutter/material.dart';
import 'package:uipractice_2/theme.dart';
import 'package:uipractice_2/widgets/general/defaultbutton_widget.dart';
import 'package:uipractice_2/widgets/general/textfieldsdecoratios_widget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
                size: 30,
              ))
        ],
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
              hintTxt: 'كلمة المرور الجديدة',
              pass: false,
              width: 0.9,
            ),
            SizedBox(height: h * 0.05),
            TextFieldsdecoratios(
              hintTxt: 'أعد كلمة المرور الجديدة',
              pass: false,
              width: 0.9,
            ),
            SizedBox(height: h * 0.02),
            DefaultButton(
              txt: 'تغيير',
              btncolor: mainColor,
              width: 0.9,
            )
          ],
        ),
      ),
    );
  }
}
