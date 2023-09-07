import 'package:ai_chat_gpt/necessary_component/custom_button.dart';
import 'package:ai_chat_gpt/utils/image_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../necessary_component/custom_container.dart';
import '../../../../necessary_component/custom_svg.dart';
import '../../../../necessary_component/custom_text.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';

class WriteScreen extends ConsumerStatefulWidget {
  const WriteScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<WriteScreen> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<WriteScreen> {

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
                        child: CustomSvg(imageLink: navUnselectedWrite,color: whiteColor,)),
                    SizedBox(width:height*0.009,),
                    CustomText(text: "Write",fontSize:20,
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
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: "Question",fontSize: 17,fontWeight: FontWeight.w400,)),
              SizedBox(height: width*0.025,),
              CustomContainer(
                  height: width*0.45,

                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: "Tell me a Jokes?",fontSize: 15,),

                      ),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.book_rounded,color: navSelectedColor,size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.copy,color: navSelectedColor,size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.share,color: navSelectedColor,size: 30,),
                            ],),
                        ),
                      )

                    ],)),
              SizedBox(height: width*0.075,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(text: "Content",fontSize: 17,fontWeight: FontWeight.w400,)),
              SizedBox(height: width*0.025,),
              CustomContainer(
                  height: width*0.45,

                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: """Sure. here's a joke for you: Why don't
scientists trust atoms? Because they
make up everything!
""",fontSize: 15,),

                      ),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.book_rounded,color: navSelectedColor,size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.copy,color: navSelectedColor,size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.share,color: navSelectedColor,size: 30,),
                            ],),
                        ),
                      )

                    ],)),
              SizedBox(height: width*0.075,),

              Container(
                height: width*0.12,
                decoration: BoxDecoration(
                    color: navBackgroundColor, // Set the background color
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: navSelectedColor,width: 2)
                ),
                child:
                Center(child: CustomText(text: "Done",fontSize: 22,fontWeight: FontWeight.w800,)),

              ),
            ],
          ),
        ),
      ),
    );;
  }
}
