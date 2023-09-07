import 'package:ai_chat_gpt/necessary_component/custom_svg.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:ai_chat_gpt/pages/authentication/sign_in_page/view/sign_in_page.dart';
import 'package:ai_chat_gpt/pages/main_page/chat_page/screen/messaging_page/view/messaging_page.dart';
import 'package:ai_chat_gpt/utils/image_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../necessary_component/custom_button.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    bool isLoggedIn = false;

    return Scaffold(
      backgroundColor: appBackgroundColor,
      body:
      !isLoggedIn?

          //if user not login
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  GestureDetector(
                      onTap: (){
                        print("ami main page er chat btn");
                      },
                      child: CustomSvg(imageLink: navUnselectedChat,color: whiteColor,)),
                  SizedBox(width:height*0.009,),
                  CustomText(text: "Chat",fontSize:20,
                    fontWeight: FontWeight.w500,color: whiteColor,),
                ],),
                GestureDetector(
                    onTap: (){
                      print("ami main page er account btn");
                    },
                    child: CustomSvg(imageLink: mainPageAccountIcon,color: greyColor,)),
              ],
            ),
            SizedBox(height: height*0.15,),
            SizedBox(
              width: width,
              height: width*0.43,
              child: CustomSvg(imageLink: mainPageWomanSeat),
            ),
            CustomButton(
              isGradiant:true,
              height: height*0.05,
              width: width * 0.4,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
                print("ami account page e jaowar btn");
              },child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hi,Let’s Talk',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SvgPicture.asset(arrow,color: whiteColor,),
                ),
              ],
            ),),
          ],
        ),
      ):

          //if user login

      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  GestureDetector(
                      onTap: (){
                        print("ami main page er chat btn");
                      },
                      child: CustomSvg(imageLink: navUnselectedChat,color: whiteColor,)),
                  SizedBox(width:height*0.009,),
                  CustomText(text: "Chat",fontSize:20,
                    fontWeight: FontWeight.w500,color: whiteColor,),
                ],),
                Container(
                  height: width*0.1,
                  width: width*0.2,
               decoration: BoxDecoration(
                 color: navBackgroundColor,
                borderRadius: BorderRadius.all(
               Radius.circular(10)),
                ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     CustomSvg(imageLink: coinToken),
                     CustomText(text: "1000",color: whiteColor,),
                   ],
                 ),
                ) ,

              ],
            ),
            SizedBox(height: height*0.15,),
            SizedBox(
              width: width,
              height: width*0.43,
              child: CustomSvg(imageLink: mainPageWomanSeat),
            ),
            CustomButton(
              isGradiant:true,
              height: height*0.05,
              // width: width * 0.4,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessagingPage()),
                );
                print("ami account page e jaowar btn");
              },child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Samiul islam, Let’s Talk',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SvgPicture.asset(arrow,color: whiteColor,),
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
