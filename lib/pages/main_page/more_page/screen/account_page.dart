import 'package:ai_chat_gpt/necessary_component/custom_button.dart';
import 'package:ai_chat_gpt/necessary_component/custom_circular_container.dart';
import 'package:ai_chat_gpt/necessary_component/custom_png.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/image_links.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AccountPage> createState() => _MorePageState();
}

class _MorePageState extends ConsumerState<AccountPage> {

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return
      Scaffold(
        backgroundColor: appBackgroundColor,
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: width*0.15,),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {

                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.arrow_back, color: whiteColor),
                                  ),
                                  CustomText(
                                    text: "Account",
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                    color: whiteColor,
                                  ),
                                ],
                              ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3, // Adjust the height as needed
                  width: double.infinity,
                  child: CustomPng(imageLink: accountPageImg,boxFit: BoxFit.cover,),
                ),

              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7, // Adjust the height as needed
                decoration: BoxDecoration(
                  color: navBackgroundColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
                ),
                child: Column(children: [
                  SizedBox(height: width*0.03,),
                  Container(
                    height: 70,
                    width: 70,
                      decoration: BoxDecoration(
                        color: navSelectedColor,
                        borderRadius: BorderRadius.circular(50),
                      )
                  ),
                  CustomText(text: "Mr Shohidul Islam Alamgir",color: whiteColor,fontSize: 27,fontWeight: FontWeight.w800,),
                  CustomText(text: "example.mr@gmail.com",fontSize: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,top:15,right: 25),
                    child: Container(
                      width: width*0.6,
                        decoration: BoxDecoration(
                          color: blackColor, // Set the background color
                          borderRadius: BorderRadius.circular(15), // Set the border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Icon(Icons.monetization_on_outlined,color: whiteColor,),
                            CustomText(text: "Available Credit 500",fontSize: 16,)
                    ],),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,top:15,right: 25),
                    child: Container(
                      height: width*0.45,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: blackColor, // Set the background color
                          borderRadius: BorderRadius.circular(15), // Set the border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: "Current plan pro:(weekly)",fontSize: 18,),
                              CustomButton(
                                isGradiant: true,
                                onPressed: (){},
                              child: CustomText(text: "Upgrade to PRO",fontSize: 25,fontWeight: FontWeight.w800,),),

                              CustomText(text: "Terms and use,Privacy policy",fontSize: 18,),

                            ],),
                        )),
                  ),
                  SizedBox(height: width*0.15,),
                  Container(
                    height: width*0.15,
                      width: width*0.9,
                      decoration: BoxDecoration(
                          color: navBackgroundColor, // Set the background color
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: navSelectedColor,width: 2)
                      ),
                      child:
                      Center(child: CustomText(text: "Logout",fontSize: 22,fontWeight: FontWeight.w800,)),

                  ),

                ],),
              ),
            ),
          ],
        ),
      )
    ;
  }
}
