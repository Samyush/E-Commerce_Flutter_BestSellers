import 'dart:async';

import 'package:best_sellers/entities/User.dart';
import 'package:best_sellers/utils/network_util.dart';



class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://192.168.1.66:8000/api";
  static final LOGIN_URL = BASE_URL+'/login';
  static final REGISTER_URL = BASE_URL+'/register';
  static final CATEGORY_URL = BASE_URL+'/categories';

  Map<String,String> headers = {
    'content-type': 'application/x-www-form-urlencoded'
  };

  //Login Existing User
  Future<User> login(Map loginData) async{
    try {
      dynamic data = await _netUtil.post(LOGIN_URL, body: loginData, headers: headers);
      print(data["message"]);
      if(data["data"]["message"] == "UnAuthorized User"){
        throw new Exception(data["data"]["message"]);
      }

      else if(data["data"]["message"] == "User Not Found"){
        throw new Exception(data["data"]["message"]);
      }
      else {
        print("d");
        print(data["data"]["message"]);
        return new User.map(data["data"]);
      }
    } catch(e){
      print(e.toString());
      throw new Exception(e.toString());
    }
  }

  //Register A New User
  Future<User> register(Map registerJsonMap) async{
    try {
      dynamic data = await _netUtil.postWithImage(REGISTER_URL,  body: registerJsonMap);
      if(data["data"]["message"] == "Invalid Data"){
        throw new Exception(data["data"]["message"]);
      }

      else if(data["data"]["message"] == "User Exists"){

        throw new Exception(data["data"]["message"]);
      }
      else {
        return new User.map(data["data"]);
      }
    } catch(e){
      print(e.toString());
      throw new Exception(e.toString());
    }
  }

}