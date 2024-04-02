import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Color buttonColor;
  String buttonText;
  VoidCallback onTap;

  Button({
    required this.buttonColor,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      height: 80,
      width: 80,
      child: GestureDetector(
        onTap: onTap,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(fontSize: 25),
        )),
      ),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(100)),
    );
  }
}
