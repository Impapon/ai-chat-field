import 'package:flutter/material.dart';

import '../../../../necessary_component/custom_circular_container.dart';
import '../../../../necessary_component/custom_text.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/colors.dart';
import '../write_details_page.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final width = ScreenSize(context).width;
    final height = ScreenSize(context).height;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body:
        Container(
          color: Colors.transparent,
          child: Column(children: [
            CustomCircularContainer(
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WriteDetailsPage()),
                  );
                },
                leading: Icon(Icons.facebook,color: whiteColor,size: 30,),
                title: CustomText(text: "Blog Article Generator",color: whiteColor,fontSize: 17,fontWeight: FontWeight.w800,),
                subtitle:CustomText(text: 'A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.',
                  color: whiteColor,),
                trailing: Icon(Icons.favorite,color: redColor,),
                isThreeLine: true,
              ),
            ),
            SizedBox(height: width*0.03,),
            CustomCircularContainer(
              child: ListTile(
                leading: Icon(Icons.email,color: whiteColor,size: 30,),
                title: CustomText(text: "Facebook Article Generator",color: whiteColor,fontSize: 17,fontWeight: FontWeight.w800,),
                subtitle:CustomText(text: 'A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.',
                  color: whiteColor,),
                trailing: Icon(Icons.favorite_outline_rounded,color: whiteColor,),
                isThreeLine: true,
              ),
            ),
            SizedBox(height: width*0.03,),

            CustomCircularContainer(
              child: ListTile(
                leading: Icon(Icons.facebook,color: whiteColor,size: 30,),
                title: CustomText(text: "Google Article Generator",color: whiteColor,fontSize: 17,fontWeight: FontWeight.w800,),
                subtitle:CustomText(text: 'A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.',
                  color: whiteColor,),
                trailing: Icon(Icons.favorite,color: redColor,),
                isThreeLine: true,
              ),
            ),
            SizedBox(height: width*0.03,),

            CustomCircularContainer(
              child: ListTile(
                leading: Icon(Icons.email,color: whiteColor,size: 30,),
                title: CustomText(text: "Mail Article Generator",color: whiteColor,fontSize: 17,fontWeight: FontWeight.w800,),
                subtitle:CustomText(text: 'A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.',
                  color: whiteColor,),
                trailing: Icon(Icons.favorite_outline_rounded,color: whiteColor,),
                isThreeLine: true,
              ),
            ),
          ],),
        )
    );
  }
}
