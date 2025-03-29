import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final VoidCallback callback;

  const CustomButton({
    required this.btnText,
    required this.btnColor,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: callback,
        child: Text(
          btnText,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
