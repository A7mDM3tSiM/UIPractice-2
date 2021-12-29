import 'package:flutter/material.dart';
import '../../theme.dart';

class TextFieldsdecoratios extends StatefulWidget {
  const TextFieldsdecoratios({
    Key? key,
    required this.hintTxt,
    this.prefixtxt = '',
    this.pass = true,
  }) : super(key: key);

  final String hintTxt, prefixtxt;
  final bool pass;

  @override
  State<TextFieldsdecoratios> createState() => _TextFieldsdecoratiosState();
}

class _TextFieldsdecoratiosState extends State<TextFieldsdecoratios> {
  bool passvisible = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Form(
      child: Container(
        alignment: Alignment.centerRight,
        height: h * 0.07,
        padding: EdgeInsets.symmetric(
          horizontal: w * 0.05,
        ),
        decoration: BoxDecoration(
          color: secColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          textAlign: TextAlign.right,
          obscureText: widget.pass ? !passvisible : passvisible,
          keyboardType: widget.pass
              ? TextInputType.visiblePassword
              : TextInputType.number,
          cursorColor: mainColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintTxt,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: fourthColor[400],
            ),
            prefixIcon: widget.pass
                ? IconButton(
                    icon: Icon(
                      passvisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        passvisible = !passvisible;
                      });
                    },
                    color: fourthColor[400],
                  )
                : Container(
                    height: h * 0.001,
                    width: w * 0.01,
                    child: Center(
                      child: Text(
                        widget.prefixtxt,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: fourthColor[400]),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
