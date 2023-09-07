import 'package:ai_chat_gpt/necessary_component/custom_button.dart';
import 'package:ai_chat_gpt/necessary_component/custom_circular_container.dart';
import 'package:ai_chat_gpt/necessary_component/custom_png.dart';
import 'package:ai_chat_gpt/necessary_component/custom_svg.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:ai_chat_gpt/pages/main_page/more_page/screen/account_page.dart';
import 'package:ai_chat_gpt/pages/main_page/more_page/screen/customer_service_page.dart';
import 'package:ai_chat_gpt/pages/main_page/more_page/screen/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../necessary_component/screen_size.dart';
import '../../../utils/colors.dart';
import '../../../utils/image_links.dart';
import '../../premium_purchase/purchase_premium_page.dart';

class MorePage extends ConsumerStatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  ConsumerState<MorePage> createState() => _MorePageState();
}

class _MorePageState extends ConsumerState<MorePage> {

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return  Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              CustomPng(imageLink: morePageImg),
            SizedBox(height: width*0.015,),
            CustomCircularContainer(child: ListTile(
              leading: Icon(Icons.menu_book,color: whiteColor,size: 30,),
              title: CustomText(text: "Introduction to AI Genie",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

            CustomCircularContainer(child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountPage()),
                );

              },
              leading: Icon(Icons.person,color: whiteColor,size: 30,),
              title: CustomText(text: "Account",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

            CustomCircularContainer(child: ListTile(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>
                  SettingPage()
                ));
              },
              leading: Icon(Icons.settings,color: whiteColor,size: 30,),
              title: CustomText(text: "Setting",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

            Container(
                decoration: BoxDecoration(
                  color: navBackgroundColor, // Set the background color
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: navSelectedColor,width: 2)
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.monetization_on_outlined,color: navSelectedColor,size: 30,),
                    CustomText(text: "Try",color: navSelectedColor,fontSize: 18,fontWeight: FontWeight.w800,),
                    CustomText(text: "App Genie",fontSize: 18,fontWeight: FontWeight.w800,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                        height: width*0.075,
                        isGradiant: true,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PurchasePremiumPage()));

                        },child: CustomText(text: "Premium",
                        color: whiteColor,fontSize: 25,fontWeight: FontWeight.w800,),),
                    )
                  ],
                )
              //   ListTile(
              // leading: Icon(Icons.monetization_on_outlined,color: whiteColor,size: 30,),
              // title: CustomText(text: "Try App Genie",fontSize: 18,fontWeight: FontWeight.w800,),)

            ),


            SizedBox(height: width*0.025,),


            CustomCircularContainer(child: ListTile(
              leading: Icon(Icons.slow_motion_video_rounded,color: whiteColor,size: 30,),
              title: CustomText(text: "Video tutorial",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

            CustomCircularContainer(child: ListTile(
              leading: Icon(Icons.share_outlined,color: whiteColor,size: 30,),
              title: CustomText(text: "Share the app",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

            CustomCircularContainer(child: ListTile(
              leading: Icon(Icons.star_border,color: whiteColor,size: 30,),
              title: CustomText(text: "Leave a review",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

            CustomCircularContainer(child: ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomerServicePage()),
                );
              },
              leading: Icon(Icons.message_outlined,color: whiteColor,size: 30,),
              title: CustomText(text: "Customer service",fontSize: 18,fontWeight: FontWeight.w800,),)),
            SizedBox(height: width*0.025,),

          ],
        ),
      ),
    );
  }
}
