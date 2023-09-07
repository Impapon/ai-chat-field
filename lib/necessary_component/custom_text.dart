import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? textHeight;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final TextDecoration? textDecoration;
  const CustomText(
      {Key? key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.color,
      this.textHeight,
      this.textAlign,
      this.textOverflow,
      this.maxLines,
      this.textDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? whiteColor,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 12,
          height: textHeight,
          decoration: textDecoration,
      ),
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
