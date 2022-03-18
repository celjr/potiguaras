import 'package:flutter/material.dart';
import 'package:potiguaras/constats.dart';
import 'button_navbar.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: screenSize.height * 0.075,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ButtonNavBar(
              text: "Home",
            ),
          ],
        ),
      ),
    );
  }
}
