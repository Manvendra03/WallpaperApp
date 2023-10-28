import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/Image.dart';

class Helper {
  static const String url = "https://api.pexels.com/v1/";
  static const String key =
      "Dkv18GyTSpu99QcIUvqpGAl5j5epc6NEwONuPGPtbWUkev9XVQJNc9jR";

  Future<List<Imagee>> getPage(int page) async {
    var route = "curated?page=${page}&per_page=10";

    var uri = Uri.parse(url + route);
    var response = await http.get(uri, headers: {'Authorization': key});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    final json = jsonDecode(response.body.toString()) as Map<String, dynamic>;

    List<Imagee> tempList = [];
    for (int i = 0; i < json['per_page']; i++) {
      Imagee temp = await Imagee.fromJson(json['photos'][i]);
      tempList.add(temp);
    }

    return tempList;
  }
}
