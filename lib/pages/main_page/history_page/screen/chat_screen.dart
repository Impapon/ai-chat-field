import 'package:ai_chat_gpt/necessary_component/custom_button.dart';
import 'package:ai_chat_gpt/utils/image_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../necessary_component/custom_svg.dart';
import '../../../../necessary_component/custom_text.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';
import '../../chat_page/screen/messaging_page/widgets/message_item.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatScreen> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<ChatScreen> {

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return  Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:  SingleChildScrollView(
          child: Column(
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
                    // width: width*0.2,
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
                        CustomText(text: "Credit use 985",color: whiteColor,),
                      ],
                    ),
                  ) ,

                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: "${DateFormat("h:mm a,d MMM  yyy").format(DateTime.now())}",color: whiteColor,)),
              SizedBox(height: width*0.075,),
              MessageItem(),
              SizedBox(height: width*0.075,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: width*0.12,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: navBackgroundColor, // Set the background color
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: navSelectedColor,width: 2)
                    ),
                    child:
                    Center(child: CustomText(text: "Close",fontSize: 22,fontWeight: FontWeight.w800,)),

                  ),

                  Container(
                    height: width*0.12,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        color: navSelectedColor, // Set the background color
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: navSelectedColor,width: 2)
                    ),
                    child:
                    Center(child: CustomText(text: "Contiue",fontSize: 22,fontWeight: FontWeight.w800,)),

                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
