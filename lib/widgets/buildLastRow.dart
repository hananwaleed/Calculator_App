import 'package:calc/widgets/buildButton.dart';
import 'package:flutter/material.dart';

Widget buildLastRow(Function(String) appendToDisplay, Function() calculate) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        margin: EdgeInsets.all(5),
        width: 78,
        height: 78,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: Colors.grey[850],
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {},
          child: Icon(Icons.calculate, color: Colors.white, size: 30),
        ),
      ),
      buildButton('0', Colors.grey[850]!, () => appendToDisplay('0')),
      buildButton('.', Colors.grey[850]!, () => appendToDisplay('.')),
      buildButton('=', Colors.orange, calculate),
    ],
  );
}
