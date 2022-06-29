import "package:flutter/material.dart";
import 'package:potiguaras/my_home_page.dart';
import 'constats.dart';

class ButtonNavBar extends StatefulWidget {
  final String text;
  final Function() onPressed;

  const ButtonNavBar({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //falta o set state
      onHover: (value) {
        setState(() => value ? _isHovering = true : _isHovering = false);
      },
      onTap: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
            color: _isHovering ? textColorHover : textColor,
            fontSize: _isHovering ? 20 : 15),
      ),
    );
  }
}
