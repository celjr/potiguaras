import "package:flutter/material.dart";
import 'package:potiguaras/nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
