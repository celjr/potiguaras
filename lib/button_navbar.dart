import "package:flutter/material.dart";
import 'constats.dart';

class ButtonNavBar extends StatefulWidget {
  final String text;
  final Function press;

  const ButtonNavBar({Key? key, required this.text, required this.press})
      : super(key: key);

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState(text, press());
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  bool _isHovering = false;
  final String text;
  final Function press;

  _ButtonNavBarState(this.text, this.press);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //falta o set state
      onHover: (value) {
        setState(() => value ? _isHovering = true : _isHovering = false);
      },
      onTap: press(),

      child: Text(
        text,
        style: TextStyle(
            color: _isHovering ? textColorHover : textColor,
            fontSize: _isHovering ? 20 : 15),
      ),
    );
  }
}
