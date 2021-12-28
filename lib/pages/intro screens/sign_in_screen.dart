// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'intro.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 170, 0, 275));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/images/header_photo.jpg',
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextFields_decoratios(
                    hintTxt: 'رقم الهاتف',
                    prefixtxt: '+249',
                    pass: false,
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  TextFields_decoratios(
                    hintTxt: 'كلمة السر',
                    prefixtxt: 'icon',
                    pass: true,
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('hi'); //put something here
                    },
                    child: Text(
                      'نسيت كلمة السر',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.grey[400], fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.09,
                  ),
                  Default_Button(
                    //need to edit the default btn on intro.dart to do function....
                    txt: 'تسجيل الدخول',
                    btncolor: Color.fromRGBO(255, 207, 27, 1),
                  ),
                  SizedBox(
                    height: h * 0.015,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        print('hi'); //put something here
                      },
                      child: RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '   ليس لديك حساب؟  ',
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w800),
                            ),
                            TextSpan(
                                text: 'إنشاء حساب ',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 223, 103, 1),
                                    fontWeight: FontWeight.w700))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFields_decoratios extends StatefulWidget {
  const TextFields_decoratios({
    Key? key,
    required this.hintTxt,
    required this.prefixtxt,
    required this.pass,
  }) : super(key: key);

  final String hintTxt, prefixtxt;
  final bool pass;

  @override
  State<TextFields_decoratios> createState() => _TextFields_decoratiosState();
}

class _TextFields_decoratiosState extends State<TextFields_decoratios> {
  bool passvisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 245, 209, 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              keyboardType: widget.pass
                  ? TextInputType.visiblePassword
                  : TextInputType.number,
              obscureText: widget.pass == false ? passvisible : !passvisible,
              textAlign: TextAlign.right,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                hintText: widget.hintTxt,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.grey[400]),
                border: InputBorder.none,
                prefixIcon: widget.pass == false
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                        child: Text(
                          widget.prefixtxt,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[400]),
                        ),
                      )
                    : IconButton(
                        icon: Icon(
                          passvisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            passvisible = !passvisible;
                          });
                        },
                        color: Colors.grey[400],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
