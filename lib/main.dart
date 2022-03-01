import 'package:flutter/material.dart';
import 'my_home_page.dart';

void main() {
  runApp(Mysite(mySiteName: "Potiguaras"));
}

class Mysite extends StatelessWidget {
  var mySiteName = "ainda não tem titulo";
  Mysite({Key? key, String? mySiteName}) : super(key: key) {
    mySiteName = this.mySiteName;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: mySiteName,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
    );
  }
}
