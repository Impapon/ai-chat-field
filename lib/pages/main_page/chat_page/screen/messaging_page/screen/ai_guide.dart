import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../necessary_component/custom_container.dart';
import '../../../../../../necessary_component/custom_text.dart';
import '../../../../../../necessary_component/screen_size.dart';
import '../../../../../../utils/colors.dart';

class AiGuide extends ConsumerStatefulWidget {
  const AiGuide({Key? key}) : super(key: key);

  @override
  ConsumerState<AiGuide> createState() => _AiGuideState();
}

class _AiGuideState extends ConsumerState<AiGuide> {
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          CustomContainer(
              height: height*0.1,
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Row(
              children: [
                Icon(Icons.messenger_rounded,size: 25,color: whiteColor,),
                SizedBox(width: width*0.02,),
                CustomText(text: "What is ai guide?",fontSize: 20,color: whiteColor,fontWeight: FontWeight.w600,),
              ],
            ),
              SizedBox(height: width*0.01,),
              CustomText(text: "Get deeper insights into the topic you like. Select prompt, tweak it a little and get "
                  "highly accurate answers within seconds!",color: greyColor,),],),
          )),
            
          SizedBox(height: width*0.08,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          CustomContainer(
              width: width*0.3,
              height: width*0.15,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                  ),
                ],
              )
          ),
          CustomContainer(
              width: width*0.3,
              height: width*0.15,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                  ),
                ],
              )
          ),
        ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
              CustomContainer(
                  width: width*0.3,
                  height: width*0.15,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 27,color: navSelectedColor,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "Chef",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
                      ),
                    ],
                  )
              ),
            ],),
          SizedBox(height: width*0.02,),


        ],
      ),
    );
  }
}
