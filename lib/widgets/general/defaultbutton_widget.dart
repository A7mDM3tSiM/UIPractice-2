import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.txt,
    required this.btncolor,
    required this.width,
  }) : super(key: key);

  final String txt;
  final Color btncolor;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * width,
      child: TextButton(
        onPressed: () {},
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              txt,
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
            backgroundColor: btncolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
