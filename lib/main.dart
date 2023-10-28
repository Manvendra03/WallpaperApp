import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/Image.dart';
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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Imagee>(create: (context) => Imagee("", "", "")),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomePage(helper: helper, height: height),
      ),
    );
  }
}



// Shimmer.fromColors(
//             period: Duration(seconds: 2),
//             baseColor: Color.fromARGB(255, 233, 231, 231),
//             highlightColor: const Color.fromARGB(255, 255, 251, 251),