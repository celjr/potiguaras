import 'package:flutter/material.dart';
import 'package:potiguaras/constats.dart';
import 'button_navbar.dart';

class NavBar extends StatefulWidget {
  final double controllerScroll;
  const NavBar({Key? key, required this.controllerScroll}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState(controllerScroll);
}

class _NavBarState extends State<NavBar> {
  @override
  double controllerScroll;

  _NavBarState(this.controllerScroll);

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: screenSize.height * 0.075,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonNavBar(
              text: controllerScroll.toString(),
              posicaoTela: screenSize.height * 2,
              controller: controllerScroll,
            ),
          ],
        ),
      ),
    );
    print(controllerScroll);
  }
}
