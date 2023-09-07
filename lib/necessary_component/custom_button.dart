import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String? text;
  final double? height;
  final double? width;
  final Color? primary;
  final Color? textColor;
  final String? imageLink;
  final bool isGradiant;
  final IconData?icon;
  final double? gapFromIcon;
  final double? gapFromImage;
  final Widget? child;
  final Color? imageColor;
  final double? imageHeight;
  final double? textFontSize;
  final FontWeight? textFontWeight;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.height,
    this.isGradiant = false,
    this.width,
    this.primary,
    this.textColor,
    this.imageLink,
    this.gapFromImage,
    this.child,
    this.icon,
    this.gapFromIcon,
    this.imageColor,
    this.imageHeight,
    this.textFontSize,
    this.textFontWeight
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient:widget.isGradiant? LinearGradient(
              colors: [
                Color(0xFFFF7C03),
                Color(0xFFFF9A03 ),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ):LinearGradient(
            colors: [
             appBackgroundColor,
             appBackgroundColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.2),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onSurface: Colors.transparent,
            shadowColor: Colors.transparent,
            //make color or elevated button transparent
          ),
          child: widget.child??Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.imageLink == null?const SizedBox():SvgPicture.asset(widget.imageLink!,color: widget.imageColor,height: widget.imageHeight),
              widget.imageLink != null ? SizedBox(width: widget.gapFromImage??10,):const SizedBox(),
              widget.icon == null?const SizedBox():Icon(widget.icon),
              widget.icon == null?const SizedBox():SizedBox(width: widget.gapFromIcon??10),
              Text("${widget.text}",style: TextStyle(color: widget.textColor ?? (widget.primary == null||
                  widget.primary == blueColor?whiteColor:greyColor),fontWeight: widget.textFontWeight,fontSize: widget.textFontSize)),
            ],
          ),
        ),
      ),
    );
  }
}
