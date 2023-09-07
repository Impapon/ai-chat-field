
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvg extends StatelessWidget {
  final String imageLink;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final Color? color;
  const CustomSvg({Key? key, required this.imageLink, this.alignment, this.height, this.width, this.boxFit, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        imageLink,
        height: height,
        width: width,
        color: color,
        fit: boxFit??BoxFit.contain,
        alignment: alignment??Alignment.center,
    );
  }
}
