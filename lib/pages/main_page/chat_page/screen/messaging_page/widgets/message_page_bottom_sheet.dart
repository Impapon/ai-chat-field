import 'package:flutter/material.dart';

import '../../../../../../necessary_component/custom_text.dart';
import '../../../../../../necessary_component/screen_size.dart';
import '../../../../../../utils/colors.dart';
import '../screen/ai_guide.dart';
import '../screen/suggestion.dart';

class MessagePageBottomSheet extends StatefulWidget {
  const MessagePageBottomSheet({Key? key}) : super(key: key);

  @override
  State<MessagePageBottomSheet> createState() => _MessagePageBottomSheetState();
}

class _MessagePageBottomSheetState extends State<MessagePageBottomSheet> {

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
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.8,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: navBackgroundColor,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            controller: scrollController,
            children: [
              Center(
                child: Icon(Icons.expand_less,color: navSelectedColor,),
              ),

              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child:      Container(
                        alignment: Alignment.center,
                        color: navBackgroundColor,
                        height: width * 0.15,
                        width: width,
                        child:
                        TabBar(
                            padding:EdgeInsets.zero,
                            labelPadding: EdgeInsets.zero,
                            isScrollable: true,
                            indicatorColor: Colors.transparent,
                            indicatorWeight: 0.01,
                            onTap: changePage,
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Tab(
                                  child: Container(
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      color: selectedIndex == 0?navSelectedColor:
                                      secondaryMatBlack.withOpacity(0.0),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 15,top: 12),
                                      child: CustomText(
                                        text: "Suggestion",
                                        textAlign: TextAlign.center,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: selectedIndex == 0?whiteColor:greyColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Tab(
                                  child: Container(
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      color: selectedIndex == 1?navSelectedColor:
                                      secondaryMatBlack.withOpacity(0.0),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 12,top: 11),
                                      child: CustomText(
                                        text: "AI Guide",
                                        textAlign: TextAlign.center,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: selectedIndex == 1?whiteColor:greyColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: height*0.7,
                      child: PageView(
                        onPageChanged: (index){
                          setState(() {
                            selectedIndex = index;
                            print("$selectedIndex");
                          });
                        },
                        controller: controller,
                        children: [

                          Suggestion(),
                          AiGuide(),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}
