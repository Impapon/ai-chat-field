import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:flutter/material.dart';

import '../../../../../../necessary_component/custom_container.dart';
import '../../../../../../necessary_component/custom_text.dart';
import '../../../../../../utils/colors.dart';

class MessageItem extends StatefulWidget {
  const MessageItem({Key? key}) : super(key: key);

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  int msgCount = 0;
  bool user= true;
  bool ai= true;
  @override
  Widget build(BuildContext context) {
    final width= ScreenSize(context).width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [ user?
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: greyColor,
              child:  Icon(Icons.person,color: navSelectedColor,size: 35,),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomContainer(
                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText(text: "Write me a demo cv"),
                      ),
                      SizedBox(height: width*0.05,),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(text: "12.05 PM,3 May", fontSize: 14,color: greyColor,fontWeight: FontWeight.w400),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.copy,color: navSelectedColor,size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.share,color: navSelectedColor,size: 30,),
                            ],),
                        ),
                      )

                    ],)),
            ),
          ],):
        SizedBox(),
          SizedBox(height: 15,),
          ai?
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: greyColor,
                child:  Icon(Icons.person,color: navSelectedColor,size: 35,),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomContainer(
                    topRight: true,
                    backgroundColor:deepContainerBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText(text: "Sure! Here is Demo CV for you"),
                        ),
                        SizedBox(height: width*0.05,),
                        Container(
                          color: containerBackgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(text: "12.05 PM,3 May", fontSize: 14,color: greyColor,fontWeight: FontWeight.w400),
                                SizedBox(width: width*0.05,),
                                Icon(Icons.copy,color: navSelectedColor,size: 30,),
                                SizedBox(width: width*0.05,),
                                Icon(Icons.share,color: navSelectedColor,size: 30,),
                                SizedBox(width: width*0.05,),
                                Icon(Icons.download_for_offline_outlined,color: navSelectedColor,size: 30,),
                              ],),
                          ),
                        )

                      ],)),
              ),
            ],):
          SizedBox(),],
      ),
    );
  }
}
