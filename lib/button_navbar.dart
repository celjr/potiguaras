import "package:flutter/material.dart";
import 'constats.dart';

class ButtonNavBar extends StatefulWidget {
  final String text;
  final double posicaoTela;
  final double controller;

  const ButtonNavBar(
      {Key? key,
      required this.text,
      required this.posicaoTela,
      required this.controller})
      : super(key: key);

  @override
  State<ButtonNavBar> createState() =>
      _ButtonNavBarState(text, posicaoTela, controller);
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  bool _isHovering = false;
  final String text;
  double posicaoTela;
  double controller;

  _ButtonNavBarState(this.text, this.posicaoTela, this.controller);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //falta o set state
      onHover: (value) {
        setState(() => value ? _isHovering = true : _isHovering = false);
      },
      onTap: () {
        setState(() {
          controller = posicaoTela;
          print(controller);
        });
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
