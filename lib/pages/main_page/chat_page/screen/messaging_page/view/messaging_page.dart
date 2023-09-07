import 'package:ai_chat_gpt/necessary_component/custom_container.dart';
import 'package:ai_chat_gpt/necessary_component/custom_input_field.dart';
import 'package:ai_chat_gpt/necessary_component/custom_svg.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:ai_chat_gpt/pages/authentication/sign_in_page/view/sign_in_page.dart';
import 'package:ai_chat_gpt/pages/main_page/chat_page/screen/messaging_page/screen/ai_guide.dart';
import 'package:ai_chat_gpt/pages/main_page/chat_page/screen/messaging_page/screen/suggestion.dart';
import 'package:ai_chat_gpt/utils/image_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../necessary_component/custom_button.dart';
import '../../../../../../necessary_component/screen_size.dart';
import '../../../../../../utils/colors.dart';
import '../widgets/message_item.dart';
import '../widgets/message_page_bottom_sheet.dart';

class MessagingPage extends ConsumerStatefulWidget {
  const MessagingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends ConsumerState<MessagingPage> {
  int msgCount = 0;
  bool user= true;
  bool ai= true;

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    TextEditingController messageController = TextEditingController();

    return Scaffold(
      backgroundColor: appBackgroundColor,
      bottomSheet: const MessagePageBottomSheet(),
      body:
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
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                    print("ami main page er chat btn");
                  }, icon: Icon(Icons.arrow_back,color: whiteColor,size: 25,)),
                  SizedBox(width:height*0.009,),
                  CustomText(text: "Shamiul Islam",fontSize:20,
                    fontWeight: FontWeight.w500,color: whiteColor,),
                ],),
         Row(
           children: [
           CustomSvg(imageLink: navUnselectedMore,color: whiteColor,height: 25,),
           SizedBox(width: width*0.02,),
           Container(
             height: width*0.1,
             width: width*0.2,
             decoration: BoxDecoration(
               color: navBackgroundColor,
               borderRadius: const BorderRadius.all(
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
         ],)

              ],
            ),
            SizedBox(height: 20,),
            Expanded(child: SingleChildScrollView(
              child: Column(children: [
                msgCount==1?
                Padding(
                  padding:  EdgeInsets.only(top: height*0.2),
                  child: Column(
                    children: [
                      Container(
                        height: height*0.05,
                        width: height*0.2,
                        decoration: BoxDecoration(
                          border: Border.all(color: navSelectedColor),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(18)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.help,color: navSelectedColor,),
                            const SizedBox(width: 5,),
                            CustomText(text: 'Need Help ?',
                              fontWeight: FontWeight.w600,color: navSelectedColor,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.03,),
                      CustomText(text: "Ask me anything\n in any language.",fontSize: 25,color: greyColor,),],),
                ):
                MessageItem(),
                MessageItem(),
                MessageItem(),

              ],),
            )),

            MessageWriteField(messageController),


          ],
        ),
      ),
    );
  }

  Widget MessageWriteField(TextEditingController messageController){
    return      Padding(
      padding:  EdgeInsets.only(bottom: ScreenSize(context).height*0.1),
      child:
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.loose,
            child:
            CustomTextInputField(
                textColor: whiteColor,
                backgroundColor:navBackgroundColor,
                hintText: "Write your Question",
                hintColor: greyColor,
                cursorColor: whiteColor,
                textEditingController:
                messageController),
          ),
          // SizedBox(width: width * 0.03),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child:
            Container(
              decoration: BoxDecoration(
                color: navSelectedColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(18)),
              ),
              height: ScreenSize(context).width * 0.15,
              width:ScreenSize(context).width * 0.19 ,
              child: CustomButton(onPressed: (){},
                isGradiant:true,
                child: const Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
