import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  final String url;

  const DownloadPage({required this.url, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      ),
      Positioned(
          bottom: 50,
          left: 50,
          right: 50,
          child: GestureDetector(
            onTap: () {
              //download code
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 153, 22, 72),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "Download",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ))
    ]));
  }
}
