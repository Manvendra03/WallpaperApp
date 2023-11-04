import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/models/Image.dart';
import 'package:wallpaper_app/helper.dart';
import 'package:wallpaper_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Helper helper = new Helper();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}



// Shimmer.fromColors(
//             period: Duration(seconds: 2),
//             baseColor: Color.fromARGB(255, 233, 231, 231),
//             highlightColor: const Color.fromARGB(255, 255, 251, 251),