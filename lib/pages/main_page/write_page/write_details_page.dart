import 'package:ai_chat_gpt/necessary_component/custom_circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../necessary_component/custom_button.dart';
import '../../../necessary_component/custom_container.dart';
import '../../../necessary_component/custom_svg.dart';
import '../../../necessary_component/custom_text.dart';
import '../../../necessary_component/screen_size.dart';
import '../../../utils/colors.dart';
import '../../../utils/image_links.dart';

class WriteDetailsPage extends ConsumerStatefulWidget {
  const WriteDetailsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<WriteDetailsPage> createState() => _WriteDetailsPageState();
}

class _WriteDetailsPageState extends ConsumerState<WriteDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    return     Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:  Column(
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
            SizedBox(height: width*0.035,),
            CustomCircularContainer(
                height: width*0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Email Generator",fontSize: 17,),
                Icon(Icons.read_more_outlined,color: whiteColor,)
              ],
            )),
            SizedBox(height: width*0.035,),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomContainer(
                  height: width*0.45,

                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: "Write An Email Here",fontSize: 17,),

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
                              Icon(Icons.copy,color: navSelectedColor.withOpacity(0.6),size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.share,color: navSelectedColor.withOpacity(0.6),size: 30,),
                            ],),
                        ),
                      )

                    ],)),
            ),
            SizedBox(height: width*0.035,),

            SizedBox(
              height: width*0.15,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(15, (index) {
                  return Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: navBackgroundColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Container ${index + 1}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),

            SizedBox(height: width*0.035,),

            CustomButton(
              isGradiant:true,
              height: height*0.05,
              // width: width * 0.4,
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MessagingPage()),
                // );
                print("ami account page e jaowar btn");
              },child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Generate Content',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: blackColor
                ),),

              ],
            ),),
            SizedBox(height: width*0.035,),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomContainer(
                  height: width*0.45,

                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: "",fontSize: 17,),

                      ),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.book_rounded,color: navSelectedColor.withOpacity(0.6),size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.copy,color: navSelectedColor.withOpacity(0.6),size: 30,),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.share,color: navSelectedColor.withOpacity(0.6),size: 30,),
                            ],),
                        ),
                      )

                    ],)),
            ),

          ],
        ),
      ),
    );
  }
}
