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
        padding: EdgeInsets.all(8.0),
        height: screenSize.height * 0.075,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonNavBar(
                text: "Home",
                press: () {
                  controllerScroll = screenSize.height;
                }),
            SizedBox(width: screenSize.width / 50),
            ButtonNavBar(
                text: "Sobre nós",
                press: () {
                  controllerScroll = screenSize.height * 2;
                }),
            SizedBox(width: screenSize.width / 50),
            ButtonNavBar(
                text: "Alguns Produtos",
                press: () {
                  controllerScroll = screenSize.height * 2;
                }),
            SizedBox(width: screenSize.width / 50),
            ButtonNavBar(
                text: "A mente por trás",
                press: () {
                  controllerScroll = screenSize.height * 3;
                }),
            SizedBox(width: screenSize.width / 50),
            ButtonNavBar(
                text: "Entre em contato",
                press: () {
                  controllerScroll = screenSize.height * 2;
                })
          ],
        ),
      ),
    );
  }
}
