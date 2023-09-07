
import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../utils/colors.dart';
import 'custom_svg.dart';
import 'custom_text.dart';

class Skeleton {
  static Widget clubAndNationalTeamList(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SkeletonAnimation(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 25,
                    width: 25,
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  static Widget newsListForGame(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SkeletonAnimation(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [

                    Container(
                      height: ScreenSize(context).width*0.15,
                      width: ScreenSize(context).width*0.6,
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: ScreenSize(context).width*0.15,
                      width: ScreenSize(context).width*0.15,
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  static Widget newsList(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SkeletonAnimation(
            child:
            SingleChildScrollView(
              child: Column(
                children: List.generate(10, (index) =>
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Container(
                                height: ScreenSize(context).width*0.15,
                                width: ScreenSize(context).width*0.7,
                                decoration: BoxDecoration(
                                  color: lightGrey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),

                              SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: lightGrey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                height: ScreenSize(context).width*0.15,
                                width: ScreenSize(context).width*0.2,
                              ),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 5,),
                    ],)),
              ),
            ),
          ),
        ),
      ),
    );
  }
  static Widget searchPageList(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child:Column(children: [
        Container(
          height: ScreenSize(context).width * 0.3,
          color: orangeColor,
          child:      Container(
            height: ScreenSize(context).width * 0.3,
            color: orangeColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15,50,15,15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "League",
                    style: GoogleFonts.redHatDisplay(
                        fontWeight: FontWeight.w900,
                        fontSize: 27,
                        color: whiteColor),
                  ),
                ],
              ),
            ),
          ),
        ),


        SizedBox(height: 20,),

        Expanded(
          child: SingleChildScrollView(
            child: Column(children: List.generate(50, (index) =>  Padding(
              padding: const EdgeInsets.all(8.0),
              child: SkeletonAnimation(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: darkGrey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: darkGrey,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),),),
          ),
        )
      ],)

    );
  }


  static Widget predictionList(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SkeletonAnimation(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 25,
                    width: 25,
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }





  static Widget yesterdayMatch(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SkeletonAnimation(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 25,
                        width: 25,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  static Widget todayTomorrowMatch(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SkeletonAnimation(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 70,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(3),
                        ),
                          height: 10,
                          width: 70
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 10,
                width: 60,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  static Widget liveMatch(BuildContext context){
    return
      Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SkeletonAnimation(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 10,
                        width: 70,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 30,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
              Divider(color: greyColor,thickness: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 12,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 18,
                        width: 5,
                        color: darkGrey
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 12,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  static Widget emptyList(BuildContext context){
    return
      Container(
      height: ScreenSize(context).width * 0.5,
      width: ScreenSize(context).width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Colors.orangeAccent,
          Colors.purpleAccent,
          Colors.indigoAccent,
          Colors.orangeAccent
        ]),
        borderRadius: BorderRadius.circular(5),
      ),
      child: SkeletonAnimation(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: CustomText(text: "No Live Matches",color: whiteColor,fontWeight: FontWeight.w700,fontSize: 20)),
        ),
      ),
    );
  }

}

