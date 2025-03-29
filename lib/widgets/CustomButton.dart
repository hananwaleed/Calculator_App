import 'package:calculator_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnColor,
    required this.btnText,
    required this.callback,
  });

  final Color btnColor;
  final String btnText;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          callback(btnText);
        },
        child: Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: btnColor,
          ),
          child: Text(btnText, style: Constants.styleTwo),
        ),
      ),
    );
  }
}
