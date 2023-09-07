
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../keys/keys.dart';

class Auth{

  static setToken(String tokens) async{
    final prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey(token)) { prefs.remove(token); }
    if(tokens.isNotEmpty){
      await prefs.setString(token,tokens);
    }
  }

  static Future<String?> getToken() async{
    final prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(token);
    return value;
  }

  static removeToken() async{
    final prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey(token)) { prefs.remove(token); }
  }

  static Future<bool> checkToken() async{
    final prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey(token)) { return true; }
    return false;
  }

  static updateHeader(Dio dio) async{
    String? token = await Auth.getToken();
    dio.options.headers["Authorization"] = "Bearer $token";
  }
}
