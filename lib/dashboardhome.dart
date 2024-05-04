import 'package:book_app/books.dart';
import 'package:book_app/images.dart';
import 'package:book_app/img.dart';
import 'package:book_app/youtubepg.dart';
import 'package:flutter/material.dart';


class DashBoardHome extends StatefulWidget {
  const DashBoardHome({super.key});

  @override
  State<DashBoardHome> createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  List<Images> ofImage = [
    Images("assets/images/books_1.png", "Books"),
    Images("assets/images/MOTIVATIONAL.png", "Motivational Stories"),
    Images("assets/images/Quotes.png", "Quotes"),
    Images("assets/images/images.png", "Images"),
    Images("assets/images/VIDEOS.png", "Videos")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xFF021C4F),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3.5,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 1.1 -
                    kToolbarHeight +
                    40,
                child: GridView.builder(
                    itemCount: ofImage.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 4),
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                for (int j = 0; j < ofImage.length; j++) {
                                  if (j == 0 && i == 0) {
                                    print(j);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Books()));
                                  } else if (j == 3 && i == 3) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const Img()));
                                  } else if (j == 4 && i == 4) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const YoutubePg()));
                                  }
                                }
                              },
                              child: Image.asset(ofImage[i].imagept)),
                          Text(
                            ofImage[i].textpt,
                            maxLines: 2,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
