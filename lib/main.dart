
import 'package:calculator_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const Calc());
}
class Calc extends StatelessWidget {
  const Calc ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}