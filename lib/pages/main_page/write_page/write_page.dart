import 'package:ai_chat_gpt/pages/main_page/history_page/history_page.dart';
import 'package:ai_chat_gpt/pages/main_page/home_page/home_page.dart';
import 'package:ai_chat_gpt/pages/main_page/write_page/screen/all_screen.dart';
import 'package:ai_chat_gpt/pages/main_page/write_page/screen/blog_screen.dart';
import 'package:ai_chat_gpt/pages/main_page/write_page/screen/favourite_screen.dart';
import 'package:ai_chat_gpt/pages/main_page/write_page/screen/product_screen.dart';
import 'package:ai_chat_gpt/pages/main_page/write_page/screen/social_media_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../necessary_component/custom_button.dart';
import '../../../necessary_component/custom_svg.dart';
import '../../../necessary_component/custom_text.dart';
import '../../../necessary_component/screen_size.dart';
import '../../../utils/colors.dart';
import '../../../utils/image_links.dart';
import '../chat_page/screen/messaging_page/view/messaging_page.dart';

class WritePage extends ConsumerStatefulWidget {
  const WritePage({Key? key}) : super(key: key);

  @override
  ConsumerState<WritePage> createState() => _WritePageState();
}

class _WritePageState extends ConsumerState<WritePage> {

  int selectedIndex = 0;
  bool change = false;
  PageController controller = PageController();
  changePage(int index){
    setState(() {
      selectedIndex = index;
      print("$selectedIndex");
      controller.animateToPage(selectedIndex, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;

    return
      Scaffold(
      backgroundColor: appBackgroundColor,
      body:   Padding(
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


            Expanded(
              child:
              DefaultTabController(
                  length: 5,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.transparent,
                        height: width * 0.15,
                        width: width,
                        child:
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: TabBar(
                              padding:EdgeInsets.zero,
                              labelPadding: EdgeInsets.zero,
                              isScrollable: true,
                              indicatorColor: Colors.transparent,
                              indicatorWeight: 0.01,
                              onTap: changePage,
                              tabs: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedIndex == 0?navSelectedColor:
                                        navBackgroundColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 15,top: 12),
                                        child: Row(children: [
                                          CustomText(
                                            text: "All",
                                            textAlign: TextAlign.center,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: selectedIndex == 0?blackColor:greyColor,
                                          ),
                                        ],),
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedIndex == 1?navSelectedColor:
                                        navBackgroundColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 12,top: 11),
                                        child: Row(
                                          children: [
                                            Icon(Icons.favorite,color: redColor,),
                                            CustomText(
                                              text: "Favourite",
                                              textAlign: TextAlign.center,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: selectedIndex == 1?blackColor:greyColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedIndex == 2?navSelectedColor:
                                        navBackgroundColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 15,top: 12),
                                        child: Row(
                                          children: [
                                            Icon(Icons.blinds_closed_outlined,),
                                            CustomText(
                                              text: "Blog",
                                              textAlign: TextAlign.center,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: selectedIndex == 2?blackColor:greyColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedIndex == 3?navSelectedColor:
                                        navBackgroundColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 12,top: 11),
                                        child: Row(
                                          children: [
                                            Icon(Icons.piano_rounded,),
                                            CustomText(
                                              text: "Product",
                                              textAlign: TextAlign.center,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: selectedIndex == 3?blackColor:greyColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: selectedIndex == 4?navSelectedColor:
                                        navBackgroundColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 15,top: 12),
                                        child: Row(
                                          children: [
                                            Icon(Icons.score_outlined,),
                                            CustomText(
                                              text: "Social Media",
                                              textAlign: TextAlign.center,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: selectedIndex == 4?blackColor:greyColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(height: width * 0.02,),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: PageView(
                            onPageChanged: (index){
                              setState(() {
                                selectedIndex = index;
                                print("$selectedIndex");
                              });
                            },
                            controller: controller,
                            children: [
                              AllScreen(),
                              Favourite(),
                              Blog(),
                              Product(),
                              SocialMedia()
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
