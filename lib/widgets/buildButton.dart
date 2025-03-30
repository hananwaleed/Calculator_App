import 'package:flutter/material.dart';

Widget buildButton(
    String text,
    Color bgColor,
    Function() onPressed, {
    Color textColor = Colors.white,
  }) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 75,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: bgColor,
          padding: EdgeInsets.all(20),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
