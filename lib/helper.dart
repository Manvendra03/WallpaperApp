import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/Image.dart';

class Helper {
  static final String url =
      "https://api.pexels.com/v1/curated?page=2&per_page=40";
  static final String key =
      "Dkv18GyTSpu99QcIUvqpGAl5j5epc6NEwONuPGPtbWUkev9XVQJNc9jR";

  static void getPage(int page) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri, headers: {'Authorization': key});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    final json = jsonDecode(response.body.toString()) as Map<String, dynamic>;
    for (int i = 0; i < json['per_page']; i++) {
      Imagee temp = await Imagee.fromJson(json['photos'][i]);
      Imagee.list.add(temp);
    }
  }
}
