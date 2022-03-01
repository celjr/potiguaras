import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Flexible(
      child: Container(
        height: screenSize.height * 0.075,
        color: Colors.grey,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Home"),
                onHover: (value) {
                  if (value == true) {
                    TextButton.styleFrom(primary: Colors.pink);
                  } else {}
                },
              ),
              TextButton(onPressed: () {}, child: Text("Sobre as Potiguaras")),
              TextButton(onPressed: () {}, child: Text("Fala com a gente!"))
            ],
          ),
        ),
      ),
    );
  }
}
