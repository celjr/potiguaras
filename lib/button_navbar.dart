import "package:flutter/material.dart";
import 'package:potiguaras/my_home_page.dart';
import 'constats.dart';

class ButtonNavBar extends StatefulWidget {
  final String text;

  const ButtonNavBar({Key? key, required this.text}) : super(key: key);

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState(text);
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  bool _isHovering = false;
  final String text;

  _ButtonNavBarState(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //falta o set state
      onHover: (value) {
        setState(() => value ? _isHovering = true : _isHovering = false);
      },
      child: Text(
        text,
        style: TextStyle(
            color: _isHovering ? textColorHover : textColor,
            fontSize: _isHovering ? 20 : 15),
      ),
    );
  }
}
