import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'constats.dart';

void main() => runApp(Mysite(mySiteName: "Potiguaras"));

class Mysite extends StatelessWidget {
  final mySiteName;
  Mysite({Key? key, this.mySiteName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: mySiteName,
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}
