import 'package:calc/widgets/buildButton.dart';
import 'package:flutter/material.dart';


Widget buildLastRow(Function(String) appendToDisplay, Function() calculate) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.calculate, color: Colors.white),
      ),
      buildButton('0', Colors.grey[850]!, () => appendToDisplay('0')),
      buildButton('.', Colors.grey[850]!, () => appendToDisplay('.')),
      buildButton('=', Colors.orange, calculate),
    ],
  );
}
