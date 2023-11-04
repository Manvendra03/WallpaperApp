import 'package:flutter/material.dart';
import 'package:wallpaper_app/home_page.dart';
import 'package:wallpaper_app/pages/page1.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 153, 22, 72),
        title: const Text(
          "Wallpaper App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Container(),
    );
  }
}
