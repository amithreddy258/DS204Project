import 'dart:io';

import 'package:flutter/material.dart';
import 'SliderModel.dart';

class Introslider extends StatefulWidget {
  const Introslider({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Introslider> {
  List<SliderModel> mySLides = <SliderModel>[];
  int slideIndex = 0;
  late PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff3C8CE7), Color(0xff00EAFF)])),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              SlideTile(
                imagePath: mySLides[0].getImageAssetPath(),
                title: mySLides[0].getTitle(),
              ),
              SlideTile(
                imagePath: mySLides[1].getImageAssetPath(),
                title: mySLides[1].getTitle(),
              ),
              SlideTile(
                imagePath: mySLides[2].getImageAssetPath(),
                title: mySLides[2].getTitle(),
              )
            ],
          ),
        ),
        bottomSheet: slideIndex != 2
            ? Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        controller.animateToPage(2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.blue[50];
                          }
                          return null; // Defer to the widget's default.
                        }),
                      ),
                      child: const Text(
                        "SKIP",
                        style: TextStyle(
                            color: Color(0xFF0074E4),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == slideIndex
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        print("this is slideIndex: $slideIndex");
                        controller.animateToPage(slideIndex + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.blue[50];
                          }
                          return null; // Defer to the widget's default.
                        }),
                      ),
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                            color: Color(0xFF0074E4),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              )
            : InkWell(
                onTap: () {
                  print("Get Started Now");
                },
                child: Container(
                  height: Platform.isIOS ? 70 : 60,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    "GET STARTED NOW",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title;

  SlideTile({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white10,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          const SizedBox(
            height: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 40,
                color: Colors.deepPurple),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
