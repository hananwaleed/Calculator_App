import 'package:calc/widgets/buildButton.dart';
import 'package:flutter/material.dart';


Widget buildRow(
  List<String> buttons,
  List<Color> colors,
  Function(String) appendToDisplay,
  Function() clearDisplay,
  Function() calculate,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List.generate(buttons.length, (index) {
      return buildButton(
        buttons[index],
        colors[index],
        () {
          if (buttons[index] == 'AC') {
            clearDisplay();
          } else if (buttons[index] == '=') {
            calculate();
          } else {
            appendToDisplay(buttons[index]);
          }
        },
      );
    }),
  );
}
