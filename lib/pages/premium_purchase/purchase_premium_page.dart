
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../necessary_component/custom_text.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';

class PurchasePremiumPage extends ConsumerStatefulWidget {
  const PurchasePremiumPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PurchasePremiumPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<PurchasePremiumPage> {

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return  Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Align(alignment: Alignment.centerRight,
           child:GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Icon(Icons.backspace,color: greyColor,)),
         ),
            SizedBox(height: width*0.075,),
            Row(children: [
              CustomText(text: "Create ",fontWeight: FontWeight.w800,fontSize: 25,),
              CustomText(text: "anything, in",color:navSelectedColor,fontWeight: FontWeight.w800,fontSize: 25,),
            ],),
            CustomText(text: "Seconds. ",fontWeight: FontWeight.w800,fontSize: 25,),
            SizedBox(height: width*0.075,),
            Row(children: [
              Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
              SizedBox(width: width*0.015,),
              CustomText(text: "Boost your creativity and much more productive.",fontSize: 15,maxLines: 2,)
            ],),
            SizedBox(height: width*0.015,),
            Row(children: [
              Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
              SizedBox(width: width*0.015,),
              CustomText(text: "Boost your creativity and much more productive.",fontSize: 15,maxLines: 2,)
            ],),
            SizedBox(height: width*0.015,),
            Row(children: [
              Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
              SizedBox(width: width*0.015,),
              CustomText(text: "Boost your creativity and much more productive.",fontSize: 15,maxLines: 2,)
            ],),
            SizedBox(height: width*0.015,),
            Row(children: [
              Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
              SizedBox(width: width*0.015,),
              CustomText(text: "Boost your creativity and much more productive.",fontSize: 15,maxLines: 2,)
            ],),
            SizedBox(height: width*0.055,),

            Container(
              height: width*0.15,
              decoration: BoxDecoration(
                  color: Colors.transparent, // Set the background color
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: navSelectedColor,width: 2)
              ),
              child:ListTile(
                title: CustomText(text: "WEEKLY",fontSize: 20,),
                leading:  Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
                subtitle: CustomText(text: "BDT 500.00/Week"),
              )

            ),
            SizedBox(height: width*0.055,),

            Container(
                height: width*0.15,
                decoration: BoxDecoration(
                    color: Colors.transparent, // Set the background color
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: whiteColor,width: 2)
                ),
                child:ListTile(
                  title: CustomText(text: "MONTHLY",fontSize: 20,),
                  leading:  Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
                  subtitle: CustomText(text: "BDT 1400.00/Month"),
                )

            ),
            SizedBox(height: width*0.055,),

            Container(
                height: width*0.15,
                decoration: BoxDecoration(
                    color: Colors.transparent, // Set the background color
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: whiteColor,width: 2)
                ),
                child:ListTile(
                  title: CustomText(text: "YEARLY",fontSize: 20,),
                  leading:  Icon(Icons.brightness_1_rounded,color: navSelectedColor,),
                  subtitle: CustomText(text: "BDT 5400.00/Year"),
                )

            ),

            SizedBox(height: width*0.075,),
            Container(
              height: width*0.12,
              decoration: BoxDecoration(
                  color: navSelectedColor, // Set the background color
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: navSelectedColor,width: 2)
              ),
              child:
              Center(child: CustomText(text: "Continue",fontSize: 22,fontWeight: FontWeight.w800,)),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Pricay Policy"),
                CustomText(text: "Restore"),
                CustomText(text: "Terms and Use"),
              ],
            ),

          ],
        ),
      ),
    );;
  }
}
