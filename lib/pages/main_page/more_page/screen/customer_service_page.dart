import 'package:ai_chat_gpt/necessary_component/custom_circular_container.dart';
import 'package:ai_chat_gpt/necessary_component/custom_input_field.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';

class CustomerServicePage extends ConsumerStatefulWidget {
  const CustomerServicePage({Key? key}) : super(key: key);

  @override
  ConsumerState<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends ConsumerState<CustomerServicePage> {

  final fromController = TextEditingController();
  final toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return  Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 80),
        child:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {

                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: whiteColor),
                ),
                CustomText(
                  text: "Customer Service",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: whiteColor,
                ),
              ],
            ),
            SizedBox(height: width*0.055,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: CustomCircularContainer(
                    height: width*0.15,
                    child: Center(child: CustomText(text: "From",fontSize: 17,)),),
                ),
                SizedBox(width: width*0.015,),
                Expanded(
                  flex: 8,
                  child:CustomTextInputField(
                    backgroundColor: navBackgroundColor,
                    textColor: whiteColor,
                    hintText: "octupas.fish@gmail.com",
                    hintColor: whiteColor,
                    textEditingController: fromController,
                  )
                ),
              ],
            ),
            SizedBox(height: width*0.025,),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CustomCircularContainer(
                    height: width*0.15,
                    child: Center(child: CustomText(text: "To",fontSize: 17)),),
                ),
                SizedBox(width: width*0.015,),
                Expanded(
                  flex: 8,
                  child:CustomTextInputField(
                    backgroundColor: navBackgroundColor,
                    textColor: whiteColor,
                    hintText: "hilsha.fish@gmail.com",
                    hintColor: whiteColor,
                    textEditingController: toController,
                  )
                ),
              ],
            ),
            SizedBox(height: width*0.055,),


            CustomText(
              text: "Customer Service",
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: whiteColor,
            ),

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

              SizedBox(height: width*0.055,),


              CustomText(
                text: "Your question",
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: whiteColor,
              ),
              SizedBox(height: width*0.025,),
              CustomCircularContainer(
                  height: width*0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(text: """Lorem ipsum dolor sit amet consectetur. Quam in tortor erat id at facilisi. Eget aliquet aliquam scelerisque risus. Lorem sit sed ut 

semper ultricies faucibus vitae aliquam. Justo vitae aliquam senectus pulvinar congue. Rhoncus tincidunt volutpat non gravida gravida viverra faucibus amet.""")
                  ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                     CustomCircularContainer(
                         height: width*0.09,

                       backgroundColor: blackColor,
                         child: Row(children: [
                       Icon(Icons.translate,color: greyColor,),
                       CustomText(text: "Google translate",fontSize: 17,),
                     ],)),

                          CustomCircularContainer(
                            height: width*0.09,
                              backgroundColor: blackColor,
                              child: Row(children: [
                                Icon(Icons.paste,color: greyColor,),
                                CustomText(text: "Paste",fontSize: 17),
                              ],)),
                   ],),
              ],)),
            SizedBox(height: width*0.055,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                height: width*0.15,
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
                  height: width*0.15,
                  width: width*0.4,
                  decoration: BoxDecoration(
                      color: navSelectedColor, // Set the background color
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: navSelectedColor,width: 2)
                  ),
                  child:
                  Center(child: CustomText(text: "Send",fontSize: 22,fontWeight: FontWeight.w800,)),

                )
              ],
            ),
            ],),
        ),
      ),
    );
  }
}
