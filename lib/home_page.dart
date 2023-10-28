import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/Image.dart';
import 'package:wallpaper_app/helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.helper,
    required this.height,
  });

  final Helper helper;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xffDFCCFB),
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Search",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                GestureDetector(
                  onTap: () {
                    helper.getPage(2);
                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Color(0xffBEADFA),
          elevation: 1,
        ),

        body: Container(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10),
          height: height,
          width: double.infinity,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: context.watch<Imagee>().list.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 500,
                  width: 300,
                  color: Colors.white,
                  child: Image.network(
                      context.watch<Imagee>().list[index].medium,
                      fit: BoxFit.cover),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.read<Imagee>().addToList(await helper.getPage(2));
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              helper.getPage(1);
            },
            currentIndex: 0,
            showSelectedLabels: false,
            selectedIconTheme: IconThemeData(color: Colors.white, size: 35),
            showUnselectedLabels: false,
            backgroundColor: Color(0xffBEADFA),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",

                // activeIcon: Icon(
                //   Icons.home,
                //   color: Colors.white,
                //   size: 30,
                // ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.download_sharp,
                  ),
                  label: "download"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2,
                  ),
                  label: "profile"),
            ]),
      ),
    );
  }
}
