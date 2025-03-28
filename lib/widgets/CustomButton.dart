import 'package:calculator_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key,required this.btnColor,required this.btnText});
  final Color btnColor;
 final String btnText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 70,
        height: 70,
      
        child: Text(btnText,style: Constants.styleTwo,),
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),  color: btnColor,
        ),
      ),
    );
  }
}
