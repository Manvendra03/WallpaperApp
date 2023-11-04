import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/models/Image.dart';
import 'package:wallpaper_app/helper.dart';
import 'package:wallpaper_app/pages/page1.dart';
import 'package:wallpaper_app/pages/page2.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color primaryColor = Color.fromARGB(255, 153, 22, 72);

  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Wallpaper App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                pageIndex = 0;
                setState(() {});
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                pageIndex = 1;
                setState(() {});
              },
              icon: const Icon(
                Icons.category,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                pageIndex = 2;
                setState(() {});
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
