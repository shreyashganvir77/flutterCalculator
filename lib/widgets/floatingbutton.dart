import 'package:flutter/material.dart';

class CalculatorButtonwithIcon extends StatelessWidget {
  final Icon icon;
  final int color;
  final int shadowColor;
  const CalculatorButtonwithIcon(
      {Key? key,
      required this.icon,
      required this.color,
      required this.shadowColor})
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
            color: Color(shadowColor).withOpacity(0.15),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(2, 5),
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: () {},
        child: icon,
        backgroundColor: Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String title;
  final int color;
  final textColor;
  final shadowColor;
  const CalculatorButton({
    Key? key,
    required this.title,
    required this.color,
    required this.textColor,
    required this.shadowColor,
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
            color: Color(shadowColor).withOpacity(0.15),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(2, 5),
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(color),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Color(textColor), fontSize: 24),
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
