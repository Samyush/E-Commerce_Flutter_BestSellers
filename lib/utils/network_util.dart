import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkUtil {
  // next three lines makes this class a Singleton
  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;

  final JsonDecoder _decoder = new JsonDecoder();

  Future<dynamic> get(String url) {
    return http.get(url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding}) async{

    http.Response responses =  await http.post(url, body: body, headers: headers, encoding: encoding);
    if(responses != null){
      final int statusCode = responses.statusCode;
      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }

      else if(statusCode == 404) {
        throw new Exception("Entity Not Found");
      }
      else{
        return _decoder.convert(responses.body);
      }
    }
  }

  Future<dynamic> postWithImage(String url, {Map body}) async{

    var request = http.MultipartRequest("POST", Uri.parse(url));
    //add text fields
    var profile_pic = await http.MultipartFile.fromPath("profile_picture", body['profile_picture'].path);
    request.fields["full_name"] = body['full_name'];
    request.fields["email"] = body['email'];
    request.fields["phone"] = body['phone'];
    request.fields["address"] =body['address'];
    request.fields["password"] =body['password'];
    request.fields["status"] =body['status'];
    request.fields["login_type"] ="normal";
    request.fields["vendor_token"] ="demo_token";

    //create multipart using filepath, string or bytes
    //add multipart to request
    request.files.add(profile_pic);

    final streamedResponse = await request.send();

    //Get the response from the server
    final response = await http.Response.fromStream(streamedResponse);

    if(response.body != null){
      final int statusCode = response.statusCode;
      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }

      else if(statusCode == 404) {
        throw new Exception("Entity Not Found");
      }
      else if(statusCode == 422){
        throw new Exception("validation Error Found");
      }
      else{
        return _decoder.convert(response.body);
      }
    }
  }
}