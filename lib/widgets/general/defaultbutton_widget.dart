import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  DefaultButton({
    Key? key,
    required this.txt,
    required this.btncolor,
    required this.width,
    this.func,
  }) : super(key: key);

  final String txt;
  final Color btncolor;
  final double width;
  Function? func;

  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widget.width,
      child: TextButton(
        onPressed: widget.func != null
            ? () {
                widget.func!();
              }
            : () {},
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              widget.txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: widget.btncolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
