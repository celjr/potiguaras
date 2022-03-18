import "package:flutter/material.dart";
import 'package:potiguaras/nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double controllerScroll = 0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final PageController controllerPage = PageController(
      initialPage: 0,
    );
    return Scaffold(
      appBar: PreferredSize(
        child: NavBar(),
        preferredSize: screenSize,
      ),
      body: PageView(
        controller: controllerPage,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: 50,
                  alignment: Alignment.bottomCenter,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {
                    controllerPage.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: 50,
                  alignment: Alignment.bottomCenter,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {
                    controllerPage.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInCirc);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colors.black12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: 50,
                  alignment: Alignment.bottomCenter,
                  icon: Icon(Icons.keyboard_arrow_up),
                  onPressed: () {
                    controllerPage.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
