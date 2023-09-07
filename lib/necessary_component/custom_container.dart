import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final double? width;
  bool topRight;
  bool bottomRight;
  bool bottomLeft;
  bool topLeft;
  final double? height;
  Color? backgroundColor;
   CustomContainer({Key? key,
    required this.child,
    this.borderRadius = 10,
    this.height,
    this.backgroundColor,
    this.width,
    this.topRight=false,
    this.bottomRight=false,
    this.bottomLeft=false,
    this.topLeft=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize(context).width;

    return Container(
      height: height,
      width:  width?? screenWidth*0.9,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight:topRight? Radius.circular(12):Radius.circular(0),
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topLeft:topLeft? Radius.circular(12):Radius.circular(0)),
        boxShadow: [
          BoxShadow(color:backgroundColor?? containerBackgroundColor, spreadRadius: 0, blurRadius: 0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 3),
        child: child,
      ),
    );
  }
}