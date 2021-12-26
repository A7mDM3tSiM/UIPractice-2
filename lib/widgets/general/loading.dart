// ignore: import_of_legacy_library_into_null_safe
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  const Loading(
      {Key? key,
      required this.height,
      required this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: FlareActor(
        "assets/flrs/loadingCircles.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "Loading",
        color: color,
      ),
    );
  }
}
