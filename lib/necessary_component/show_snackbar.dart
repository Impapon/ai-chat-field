import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../utils/colors.dart';

class ShowSnackBar{

  static showSnackBar({required BuildContext context,required bool success ,required String text}) {
    success?showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.success(
            message: text,
        ),
    ):showTopSnackBar(
        Overlay.of(context),
        displayDuration:const Duration(milliseconds: 100),
        CustomSnackBar.error(
            message: text));
  }
  static toastShow(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: redColor,
          content: Text( "Swipe up for next",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,fontFamily: 'CircularStd',color: whiteColor,),maxLines: 1,textAlign: TextAlign.center,),/*const CustomText(text: "Swipe up for next",fontWeight: FontWeight.w500,fontSize: 14,fontFamily: 'CircularStd',textColor: whiteColor,),*/
          margin: EdgeInsets.symmetric(horizontal: ScreenSize(context).width * 0.25,vertical: ScreenSize(context).width * 0.24),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(milliseconds: 600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        )
    );
  }
}