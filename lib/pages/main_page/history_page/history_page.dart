import 'package:ai_chat_gpt/necessary_component/custom_button.dart';
import 'package:ai_chat_gpt/pages/main_page/chat_page/screen/chat_page.dart';
import 'package:ai_chat_gpt/pages/main_page/history_page/screen/chat_screen.dart';
import 'package:ai_chat_gpt/pages/main_page/history_page/screen/write_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../necessary_component/custom_circular_container.dart';
import '../../../necessary_component/custom_container.dart';
import '../../../necessary_component/custom_input_field.dart';
import '../../../necessary_component/custom_svg.dart';
import '../../../necessary_component/custom_text.dart';
import '../../../necessary_component/date_pickar.dart';
import '../../../necessary_component/screen_size.dart';
import '../../../utils/colors.dart';
import '../../../utils/image_links.dart';
import 'package:intl/intl.dart';


class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage> {

  final searchController = TextEditingController();


  CustomDatePicker datePicker = CustomDatePicker();
  DateTime? selectedDate;
  int sliderIndex = 0;
  int selectedIndex = 0;
  bool isToday= false;
  DateTime nowT = DateTime.now();
  String? date;
  String? Upcomingdate;


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
                        child: CustomSvg(imageLink: navUnselectedHistory,color: whiteColor,)),
                    SizedBox(width:height*0.009,),
                    CustomText(text: "History",fontSize:20,
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
                        CustomText(text: "985",color: whiteColor,),
                      ],
                    ),
                  ) ,

                ],
              ),
              SizedBox(height: width*0.075,),

              CustomText(text: "${DateFormat("EEEEE, dd MMMM yyyy").format(DateTime.now())}",
                fontSize: 20,color: navSelectedColor,fontWeight: FontWeight.w800,),

              SizedBox(height: width*0.075,),

              Row(
                children: [
                  Expanded(
                      flex: 6,
                      child:CustomTextInputField(
                        backgroundColor: navBackgroundColor,
                        textColor: whiteColor,
                        hintText: "Search.....",
                        hintColor: whiteColor,
                        textEditingController: searchController,
                      )
                  ),
                  SizedBox(width: width*0.015,),

                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: (){
                        final RenderBox button = context.findRenderObject() as RenderBox;
                        final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
                        final RelativeRect position = RelativeRect.fromRect(
                          Rect.fromPoints(
                            button.localToGlobal(Offset.zero, ancestor: overlay),
                            button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
                          ),
                          Offset.zero & overlay.size,
                        );

                        showMenu(
                          context: context,
                          position: position,
                          items: <PopupMenuEntry>[
                            PopupMenuItem(
                              child: ListTile(
                                leading: Icon(Icons.add),
                                title: Text('Option 1'),
                              ),
                            ),
                            PopupMenuItem(
                              child: ListTile(
                                leading: Icon(Icons.remove),
                                title: Text('Option 2'),
                              ),
                            ),
                          ],
                        );
                      },
                      child: CustomCircularContainer(
                        height: width*0.15,
                        child: Center(child: Icon(Icons.sort,color: whiteColor,size: 30,)),),
                    ),
                  ),
                  SizedBox(width: width*0.015,),
                  Expanded(
                      flex: 2,
                      child:GestureDetector(
                        onTap: ()async{
                          selectedDate = await datePicker.calenderDatePicker(context);
                          setState(() {
                            selectedIndex = -1;
                          });
                          Upcomingdate="${selectedDate!.year}-${(selectedDate!.month).toString().padLeft(2,'0')}-${(selectedDate!.day).toString().padLeft(2,'0')}";
                          print("date picked $Upcomingdate");
                        },
                        child: CustomCircularContainer(
                          height: width*0.15,
                          child: Center(child: Icon(Icons.calendar_month,color: whiteColor,size: 30,)),),
                      ),
                  ),
                ],
              ),
              SizedBox(height: width*0.055,),

              CustomContainer(
                  height: width*0.55,
                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: "Hey Do you want to know how to talk",fontSize: 17,color: navSelectedColor,),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: """Hello! As an AI chat write app, I am Programmed to understand natural language and respond to your queries...""",
                          fontSize: 17,color: whiteColor,),
                      ),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                              },child: Row(
                                children: [
                                  CustomSvg(imageLink: navUnselectedChat,color: navSelectedColor,),
                                  SizedBox(width: width*0.012,),
                                  CustomText(text: "Chat",color: navSelectedColor,),
                                ],
                              ),),
                             CustomText(text: "${DateFormat("h:mm a, MMM d").format(DateTime.now())}",fontSize: 15,)
                            ],),
                        ),
                      )

                    ],)),
              SizedBox(height: width*0.025,),
              CustomContainer(
                  height: width*0.55,
                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: "Hey Do you want to know how to talk",fontSize: 17,color: navSelectedColor,),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: """Hello! As an AI chat write app, I am Programmed to understand natural language and respond to your queries...""",
                          fontSize: 17,color: whiteColor,),
                      ),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const WriteScreen()));

                              },child: Row(
                                children: [
                                  CustomSvg(imageLink: navUnselectedWrite,color: navSelectedColor,),
                                  SizedBox(width: width*0.012,),
                                  CustomText(text: "Write",color: navSelectedColor,),
                                ],
                              ),),
                              CustomText(text: "${DateFormat("h:mm a, MMM d").format(DateTime.now())}",fontSize: 15,)
                            ],),
                        ),
                      )

                    ],)),
              SizedBox(height: width*0.025,),
              CustomContainer(
                  height: width*0.55,
                  topLeft:true,
                  backgroundColor:deepContainerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: "Hey Do you want to know how to talk",fontSize: 17,color: navSelectedColor,),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:CustomText(text: """Hello! As an AI chat write app, I am Programmed to understand natural language and respond to your queries...""",
                          fontSize: 17,color: whiteColor,),
                      ),
                      Container(
                        color: containerBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(onPressed: (){},child: Row(
                                children: [
                                  CustomSvg(imageLink: navUnselectedChat,color: navSelectedColor,),
                                  SizedBox(width: width*0.012,),
                                  CustomText(text: "Chat",color: navSelectedColor,),
                                ],
                              ),),
                              CustomText(text: "${DateFormat("h:mm a, MMM d").format(DateTime.now())}",fontSize: 15,)
                            ],),
                        ),
                      )

                    ],)),
            ],
          ),
        ),
      ),
    );;
  }
}
