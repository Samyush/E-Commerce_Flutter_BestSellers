import 'dart:convert';
import 'package:http/http.dart' as http;

class Services {
  /*static Future<List<Category>> getPhotos(String page) async {
    try {
      dynamic data = await getData("http://test.fusiongroup.com.np/api/categories?page="+page);
      if(data["message"] == "Invalid Data"){
        throw new Exception(data["data"]["message"]);
      }

      else if(data["message"] == "no category"){
        throw new Exception(data["data"]["message"]);
      }
      else {
        Iterable list = data["data"]["data"];
        var categories = list.map((category) => Category.fromJson(category)).toList();
        return categories;
      }
    } catch(e){
      throw new Exception(e);
    }
  }*/

  static Future<dynamic> getData(String url) {
    final JsonDecoder _decoder = new JsonDecoder();
    return http.get(url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(res);
    });
  }

}