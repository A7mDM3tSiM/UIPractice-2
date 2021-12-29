import 'package:flutter/material.dart';
import '../../theme.dart';

class Imagefade extends StatelessWidget {
  const Imagefade({Key? key, required this.img, required this.h})
      : super(key: key);
  final String img;
  final double h;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShaderMask(
        shaderCallback: (rect) {
          return lineargradient.createShader(Rect.fromLTRB(0, 150, 0, h));
        },
        blendMode: BlendMode.dstIn,
        child: Image.asset(
          img,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
