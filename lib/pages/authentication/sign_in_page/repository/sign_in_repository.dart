
import 'package:dio/dio.dart';

class SignInRepository{

  // static Future<SignUpModel> signInRepository({required Map<String,dynamic> formData}) async{
  //
  //   Response response;
  //
  //   Dio dio = await GetDio.getDio();
  //
  //   try{
  //
  //     response = await dio.post(logIn,data: formData);
  //
  //     if(response.statusCode == 200){
  //       if(response.data["status"]){
  //         Auth.setToken(response.data['token']);
  //         return SignUpModel.fromJson(response.data);
  //         // return response.data["status"];
  //       }else{
  //         return SignUpModel.fromJson(response.data);
  //
  //         // return response.data["status"];
  //       }
  //     }
  //
  //   }catch(error){
  //     if(error is DioError){
  //       throw Exception(error.message);
  //     }
  //   }
  //   return SignUpModel();
  // }

}