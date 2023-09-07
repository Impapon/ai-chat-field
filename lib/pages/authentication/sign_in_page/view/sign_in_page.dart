import 'package:ai_chat_gpt/necessary_component/custom_png.dart';
import 'package:ai_chat_gpt/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../necessary_component/custom_button.dart';
import '../../../../necessary_component/custom_svg.dart';
import '../../../../necessary_component/custom_text.dart';
import '../../../../necessary_component/screen_size.dart';
import '../../../../utils/image_links.dart';
import '../../../main_page/home_page/home_page.dart';
import '../repository/sign_in_repository.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

   String statusMessage="";
  final formKey = GlobalKey<FormState>();
  bool value = false;
  bool showCircular = false;
  bool obscure = false;
  Map<String, dynamic> userInfo = {};
  Map<String, dynamic> userInfoFacebook = {};

  googleSignIn() async {
    //
    // GoogleSignIn googleSignIn = GoogleSignIn();
    // try {
    //   final result = await googleSignIn.signIn();
    //
    //   if (result != null) {
    //     var names = result.displayName!.split(" ");
    //     print("${result.photoUrl}");
    //     String firstName = "";
    //     String lastName = names[names.length - 1];
    //     for (int i = 0; i < names.length - 1; i++) {
    //       firstName += names[i];
    //       if (i < names.length - 2) {
    //         firstName += " ";
    //       }
    //     }
    //     userInfo = {
    //       "firstName": firstName,
    //       "lastName": lastName,
    //       "email": result.email,
    //       "image": result.photoUrl,
    //       "social": "GOOGLE"
    //     };
    //     print("${result.displayName}");
    //     bool status = false;
    //     status = await ref
    //         .read(googleFacebookProvider)
    //         .socialLogIn(formData: userInfo);
    //     print("gogle $status");
    //     if (mounted) {
    //       if (status) {
    //         if(mounted){
    //           Navigator.of(context).pushAndRemoveUntil(
    //               MaterialPageRoute(
    //                   builder: (context) =>
    //                   const HomePage(
    //                   )),(Route<dynamic> route) => false);
    //
    //         }
    //
    //       }
    //     }
    //   }
    //   print("${result?.displayName}");
    // } catch (error) {
    //   print(error);
    // }
    // return false;
  }

  facebookSignIn() async {
    // try {
    //   FacebookAuth.instance
    //       .login(permissions: ["public_profile", "email"]).then((value) async {
    //     FacebookAuth.instance.getUserData().then((value) async {
    //       Map userData = value;
    //       print(
    //           "${userData['name']} ${userData['email']} ${userData['picture']['data']['url']}");
    //       var names = userData['name'].split(" ");
    //       String firstName = "";
    //       String lastName = names[names.length - 1];
    //       for (int i = 0; i < names.length - 1; i++) {
    //         firstName += names[i];
    //         if (i < names.length - 2) {
    //           firstName += " ";
    //         }
    //       }
    //       userInfoFacebook = {
    //         "firstName": firstName,
    //         "lastName": lastName,
    //         "email": userData['email'],
    //         "image": userData['picture']['data']['url'],
    //         "social": "FACEBOOK"
    //       };
    //
    //       bool status = false;
    //
    //       if (mounted) {
    //         if (userInfoFacebook.isNotEmpty) {
    //           status = await ref
    //               .read(googleFacebookProvider)
    //               .socialLogIn(formData: userInfoFacebook);
    //         }
    //       }
    //       print("facebook $status");
    //       if (mounted) {
    //         if (status) {
    //           Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                   builder: (context) => const SuccessSignInAndSignUp(
    //                       successText: 'Sign in Successful',
    //                       registrationOrSignIn: false)));
    //         }
    //       }
    //     });
    //   });
    // } catch (error) {
    //   print(error);
    // }
  }

  @override
  Widget build(BuildContext context) {
    final height = ScreenSize(context).height;
    final width = ScreenSize(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
         backgroundColor: appBackgroundColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode(canRequestFocus: true));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 0,right: 0,bottom: 0,top: 80),
          child:
          Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset(
                  signInRobot,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(

                    decoration: BoxDecoration(
                      color: navBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(38),
                          topLeft: Radius.circular(38)),
                      boxShadow: [
                        BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                      ],
                    ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(text: "The",color: whiteColor,fontSize: 20,fontWeight: FontWeight.w600,),
                            SizedBox(width: 10,),
                            CustomText(text: "future",color: navSelectedColor,fontSize: 20,fontWeight: FontWeight.w600,),
                            SizedBox(width: 10,),
                            CustomText(text: "is Here",color: whiteColor,fontSize: 20,fontWeight: FontWeight.w600,),
                          ],),
                        SizedBox(height: 10,),
                        CustomText(text: "AI language model trained to assist you"
                            " with various tasks and answer your questions",textAlign: TextAlign.center,
                          color: greyColor,fontSize: 15,),

                      ],),

                      Column(children: [
                        CustomButton(
                            width: width * 0.9,
                            height: width*0.13,
                            onPressed: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SignInPage()),
                              // );
                              print("ami account page e jaowar btn");
                            },child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Container(
                              height:width*0.1,
                              width: width*0.1,
                              decoration: BoxDecoration(
                                color: navSelectedColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(38)),
                              ),
                              child: Icon(Icons.g_mobiledata_outlined,color: whiteColor,),
                            ),                          SizedBox(width: width*0.1,),
                          CustomText(text:'Continue with Google',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),

                        ],)),
                        SizedBox(height: 10,),
                        CustomButton(
                            width: width * 0.9,
                            height: width*0.13,
                            onPressed: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SignInPage()),
                              // );
                              print("ami account page e jaowar btn");
                            },child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Container(
                              height:width*0.1,
                              width: width*0.1,
                              decoration: BoxDecoration(
                                color: navSelectedColor,
                                borderRadius: BorderRadius.all(
                                     Radius.circular(38)),
                              ),
                              child: Icon(Icons.apple_sharp,color: whiteColor,),
                            ),
                            // CustomSvg(imageLink: appleIcon,color:navSelectedColor,),
                            SizedBox(width: width*0.1,),
                            CustomText(text:'Continue with Apple',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                          ],)),

                      ],),
                      CustomButton(
                          isGradiant:true,
                    width: width * 0.9,
                    onPressed: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignInPage()),
                      // );
                      print("ami account page e jaowar btn");
                    },child:Text('Done',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )

      ),
    );
  }
}
