import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wallpaper_app/models/Image.dart';
import 'package:wallpaper_app/helper.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Imagee> result = [];
  ScrollController scrollController = ScrollController();

  var page_num = 400;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hasNext();
  }

  void hasNext() {
    scrollController.addListener(() async {
      if (scrollController.position.maxScrollExtent ==
              scrollController.position.pixels ) {
        setState(() {
          page_num++;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5, left: 5, top: 5),
      child: FutureBuilder(
        future: Helper.getPage(page_num),
        builder: (context, snapshot) {
     
          if (snapshot.hasData) {
            for (var element in snapshot.data as List<Imagee>) {
              result.add(element);
            }

            return GridView.builder(
                controller: scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: result.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 500,
                    width: 300,
                    color: Colors.white,
                    child:
                        Image.network(result[index].medium, fit: BoxFit.cover),
                  );
                });
          } else {
            return GridView.builder(
                controller: scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Shimmer.fromColors(
                    period: Duration(seconds: 2),
                    baseColor: const Color.fromARGB(255, 190, 189, 189),
                    highlightColor: Colors.grey.shade300,
                    child: Container(
                      height: 500,
                      width: 300,
                      color: Colors.white,
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
