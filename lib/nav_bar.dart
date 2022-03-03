import 'package:flutter/material.dart';
import 'package:potiguaras/constats.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Color colorHover = Colors.pink;
    bool hover = false;
    return Flexible(
      child: Container(
        height: screenSize.height * 0.075,
        color: primaryColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                //falta o set state
                onHover: (isHover) {
                  hover = isHover;
                  print(hover);
                },
                onTap: () {
                  print("clicou");
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                      color: hover ? colorHover : textColor,
                      fontSize: hover ? 100 : 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
