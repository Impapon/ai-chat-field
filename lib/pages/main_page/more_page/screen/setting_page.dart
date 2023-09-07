import 'package:ai_chat_gpt/necessary_component/custom_circular_container.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';

class SettingPage extends ConsumerStatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingPage> createState() => _MorePageState();
}

class _MorePageState extends ConsumerState<SettingPage> {

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return  Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:
        Column(children: [
          Row(
            children: [
              IconButton(
                onPressed: () {

                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: whiteColor),
              ),
              CustomText(
                text: "Setting",
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: whiteColor,
              ),
            ],
          ),

          CustomCircularContainer(child: ListTile(
            leading: Icon(Icons.menu_book,color: whiteColor,size: 30,),
            title: CustomText(text: "English",fontSize: 18,fontWeight: FontWeight.w800,),)),
          SizedBox(height: width*0.025,),


          CustomCircularContainer(child: ListTile(
            leading: Icon(Icons.history_edu,color: whiteColor,size: 30,),
            title: CustomText(text: "Delete all history",fontSize: 18,fontWeight: FontWeight.w800,),)),
          SizedBox(height: width*0.025,),


          CustomCircularContainer(child: ListTile(
            leading: Icon(Icons.history_edu,color: whiteColor,size: 30,),
            title: CustomText(text: "Delete all chat",fontSize: 18,fontWeight: FontWeight.w800,),)),
          SizedBox(height: width*0.025,),
        ],),
      ),
    );
  }
}
