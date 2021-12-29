import 'package:flutter/material.dart';
import '../../theme.dart';

class Imagefade extends StatelessWidget {
  const Imagefade({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ShaderMask(
        shaderCallback: (rect) {
          return lineargradient.createShader(Rect.fromLTRB(0, 180, 0, 275));
        },
        blendMode: BlendMode.dstIn,
        child: Image.asset(img),
      ),
    );
  }
}
