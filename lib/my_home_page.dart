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
    return Scaffold(
      appBar: PreferredSize(
        child: NavBar(
          controllerScroll: controllerScroll,
        ),
        preferredSize: screenSize,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: false),
        child: Column(
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.black12,
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.white,
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
