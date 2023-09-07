import 'package:ai_chat_gpt/pages/main_page/chat_page/screen/chat_page.dart';
import 'package:ai_chat_gpt/pages/main_page/history_page/history_page.dart';
import 'package:ai_chat_gpt/pages/main_page/more_page/more_page.dart';
import 'package:ai_chat_gpt/pages/main_page/write_page/write_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../necessary_component/custom_png.dart';
import '../../../necessary_component/custom_svg.dart';
import '../../../necessary_component/screen_size.dart';
import '../../../utils/colors.dart';
import '../../../utils/image_links.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }
bool star =true;

  int _index = 0;
  List<Widget> pages = [
    const ChatPage(),
    const WritePage(),
    const HistoryPage(),
    const MorePage()
  ];
  List<String> unselectedImageLink = [
    navUnselectedChat,
    navUnselectedWrite,
    navUnselectedHistory,
    navUnselectedMore
  ];

  List<String> selectedImageLink = [
    navSelectedChat,
    navSelectedWrite,
    navSelectedHistory,
    navSelectedMore
  ];

  List<String> tabText = [
    'Chat',
    'Write',
    'History',
    'More'
  ];
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    return DefaultTabController(
        length: 4,
        initialIndex:_index,
        child: Scaffold(
            backgroundColor: appBackgroundColor,
            body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index){
                    setState(() {_index = index;});
                  },
                  children: pages,
                ),
              )
            ],
          ),

            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      topRight: Radius.circular(8.0),
                    ),
                    child: BottomNavigationBar(
                      backgroundColor: navBackgroundColor,
                      elevation: 0,
                      type: BottomNavigationBarType.fixed,
                      selectedFontSize: 12,
                      unselectedFontSize: 12,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      selectedItemColor: orangeColor,
                      unselectedItemColor: whiteColor,

                      currentIndex: _index,
                      onTap: (index){
                        setState(() {_index = index;});
                        pageController.jumpToPage(_index);
                      },
               items: List.generate(4, (index) => bottomItem(
                   unselectedImagePath: unselectedImageLink[index],
                   selectedImagePath: selectedImageLink[index],
                        title: tabText[index], selected: _index == index)),

                    )
                  )
              ),
            )

        )
    );
  }

  BottomNavigationBarItem bottomItem({required String unselectedImagePath,
    required String selectedImagePath,required String title,required bool selected}){
    return BottomNavigationBarItem(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSvg(imageLink:selected? selectedImagePath:unselectedImagePath,
              color: selected ? navSelectedColor : greyColor),
         SizedBox(width: ScreenSize(context).height*0.004,),
          Text(
            title,
            style: TextStyle(color: selected ? navSelectedColor : greyColor),
          ),
        ],
      ),
      label: "",
    );
  }


}

