
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signInProvider = ChangeNotifierProvider((ref) => SignInProvider());

class SignInProvider extends ChangeNotifier{
  // SignUpModel? signupModel;
  //
  // Future<bool> sigInRepository({required Map<String,dynamic> formData})async{
  //
  //   signupModel = await SignInRepository.signInRepository(formData: formData);
  //
  //   notifyListeners();
  //
  //   return signupModel !=null && signupModel!.status!;
  // }

}