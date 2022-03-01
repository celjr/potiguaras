import "package:flutter/material.dart";
import 'package:potiguaras/nav_bar.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
      child: NavBar(),
      preferredSize: screenSize,
    ));
  }
}
