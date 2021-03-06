import 'dart:developer';

import 'package:flutter/material.dart';

class CalculatorButtonwithIcon extends StatelessWidget {
  final Icon icon;
  final Color color;
  final Color shadowColor;
  final VoidCallback sign;
  const CalculatorButtonwithIcon(
      {Key? key,
      required this.icon,
      required this.color,
      required this.shadowColor,
      required this.sign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.15),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(2, 5),
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: sign,
        elevation: 8.0,
        child: icon,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final Color shadowColor;
  final VoidCallback number;

  const CalculatorButton({
    Key? key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.shadowColor,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.15),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(2, 5),
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: number,
        backgroundColor: color,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: textColor, fontSize: 24),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        elevation: 3.0,
      ),
    );
  }
}
