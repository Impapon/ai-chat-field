import 'package:ai_chat_gpt/necessary_component/custom_container.dart';
import 'package:ai_chat_gpt/necessary_component/custom_text.dart';
import 'package:ai_chat_gpt/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../necessary_component/screen_size.dart';

class Suggestion extends ConsumerStatefulWidget {
  const Suggestion({Key? key}) : super(key: key);

  @override
  ConsumerState<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends ConsumerState<Suggestion> {
  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Row(
            children: [
              Icon(Icons.person_pin,size: 25,color: navSelectedColor,),
              SizedBox(width: width*0.02,),
              CustomText(text: "Student Life",fontSize: 25,color: navSelectedColor,fontWeight: FontWeight.w600,),
            ],
          ),
          SizedBox(height: width*0.08,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.02,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.02,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.02,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.08,),
          //tech project

          Row(
            children: [
              Icon(Icons.person_pin,size: 25,color: navSelectedColor,),
              SizedBox(width: width*0.02,),
              CustomText(text: "Tech Project",fontSize: 25,color: navSelectedColor,fontWeight: FontWeight.w600,),
            ],
          ),
          SizedBox(height: width*0.08,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.02,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.02,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),
          SizedBox(height: width*0.02,),
          CustomContainer(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "Write a paragraph on <center topic>",color: greyColor,fontWeight: FontWeight.w400,fontSize: 16,),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.near_me,size: 27,color: navSelectedColor,))
            ],
          )
          ),

        ],
      ),
    );
  }
}
