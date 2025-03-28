import 'package:flutter/material.dart';

class Homescree extends StatelessWidget {
  const Homescree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator ",style: TextStyle(fontSize: 30),),
        centerTitle:true,
      ),
    );
  }
}