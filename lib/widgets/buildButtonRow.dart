import 'package:calculator_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class BuildButtonRow extends StatelessWidget {
  final List<String> buttons;
  final Function(String) numClick;

  const BuildButtonRow({
    super.key,
    required this.buttons,
    required this.numClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttons.map((btnText) => Expanded(
        child: CustomButton(
          btnColor: ["+", "-", "*", "/", "="].contains(btnText) ? Colors.orange : Colors.blueGrey,
          btnText: btnText,
          callback: () => numClick(btnText),
        ),
      )).toList(),
    );
  }
}
