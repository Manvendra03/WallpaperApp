import 'package:flutter/material.dart';
import 'package:wallpaper_app/Image.dart';
import 'package:wallpaper_app/helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(
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
                      Helper.getPage(2);
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
                itemCount: Imagee.list.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 500,
                    width: 300,
                    color: Colors.white,
                    child: Image.network(Imagee.list[index].medium,
                        fit: BoxFit.cover),
                  );
                }),
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                Helper.getPage(1);
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
      ),
    );
  }
}





// Shimmer.fromColors(
//             period: Duration(seconds: 2),
//             baseColor: Color.fromARGB(255, 233, 231, 231),
//             highlightColor: const Color.fromARGB(255, 255, 251, 251),