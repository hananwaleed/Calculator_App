import 'package:calculator_app/Screens/HistoryScreen.dart';
import 'package:calculator_app/constants/constants.dart';
import 'package:calculator_app/widgets/BuildButtonRow.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/helper/CalculatorLogic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CalculatorLogic calculator = CalculatorLogic();

  void numClick(String btnText) {
    setState(() {
      calculator.numClick(btnText);
    });
  }

  void openHistory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HistoryScreen(history: calculator.history),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator", style: Constants.styleOne),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            color: Colors.white,
            onPressed: openHistory,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 13),
            child: Text(
              calculator.history.isNotEmpty ? calculator.history.last : "",
              style: Constants.styleOne,
            ),
            alignment: Alignment.centerRight,
          ),
          const Divider(color: Colors.white, thickness: 1, indent: 50, endIndent: 50),
          Container(
            margin: const EdgeInsets.only(right: 13),
            child: Text(calculator.exp, style: Constants.styleOne),
            alignment: Alignment.centerRight,
          ),
          const SizedBox(height: 10),

          BuildButtonRow(buttons: ["AC", "C", "%", "/"], numClick: numClick),
          BuildButtonRow(buttons: ["7", "8", "9", "*"], numClick: numClick),
          BuildButtonRow(buttons: ["4", "5", "6", "-"], numClick: numClick),
          BuildButtonRow(buttons: ["1", "2", "3", "+"], numClick: numClick),
          BuildButtonRow(buttons: ["0", ".", "="], numClick: numClick),
        ],
      ),
    );
  }
}
