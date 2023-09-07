import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:ai_chat_gpt/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final double? width;
  bool topRight;
  bool bottomRight;
  bool bottomLeft;
  bool topLeft;
  final double? height;
  Color? backgroundColor;
  CustomCircularContainer({Key? key,
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
    // final width = ScreenSize(context).width;

    return   GestureDetector(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color:backgroundColor?? navBackgroundColor, // Set the background color
          borderRadius: BorderRadius.circular(15), // Set the border radius
        ),

        // decoration: BoxDecoration(
        //   border: Border.all(width: 2, color: whiteColor),
        //   borderRadius: BorderRadius.all(Radius.circular(15)),
        // ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0,right: 18),
          child: child,
        ),
      ),
    );
  }
}