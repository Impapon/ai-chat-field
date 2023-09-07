
import 'package:flutter/material.dart';

class CustomPng extends StatelessWidget {
  final String imageLink;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final Color? color;
  final double? scale;
  const CustomPng({Key? key, required this.imageLink, this.alignment, this.height, this.width, this.boxFit, this.color, this.scale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageLink,
      height: height,
      width: width,
      color: color,
      fit: boxFit??BoxFit.contain,
      alignment: alignment??Alignment.center,
      scale: scale,
    );
  }
}
