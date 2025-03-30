import 'package:calc/Screens/HistoryScreen.dart';
import 'package:calc/widgets/buildLastRow.dart';
import 'package:calc/widgets/buildRow.dart';
import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = "0";
  List<String> history = [];

  void appendToDisplay(String value) {
    setState(() {
      if (display == "0" && value != '.' && value != '+/-') {
        display = value;
      } else if (value == '+/-') {
        display = display.startsWith('-') ? display.substring(1) : '-$display';
      } else {
        display += value;
      }
    });
  }

  void clearDisplay() {
    setState(() {
      display = "0";
    });
  }

  void calculate() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(display.replaceAll('×', '*').replaceAll('÷', '/'));
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        String result = eval % 1 == 0 ? eval.toInt().toString() : eval.toStringAsFixed(2);
        history.add("$display = $result");
        display = result;
      });
    } catch (e) {
      setState(() {
        display = "Error";
      });
    }
  }

  void openHistory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HistoryScreen(history: history)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: openHistory,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                display,
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              buildRow(
                ['AC', '+/-', '%', '÷'],
                [Colors.grey, Colors.grey, Colors.grey, Colors.orange],
                appendToDisplay,
                clearDisplay,
                calculate,
              ),
              buildRow(
                ['7', '8', '9', '×'],
                [
                  Colors.grey[850]!,
                  Colors.grey[850]!,
                  Colors.grey[850]!,
                  Colors.orange,
                ],
                appendToDisplay,
                clearDisplay,
                calculate,
              ),
              buildRow(
                ['4', '5', '6', '-'],
                [
                  Colors.grey[850]!,
                  Colors.grey[850]!,
                  Colors.grey[850]!,
                  Colors.orange,
                ],
                appendToDisplay,
                clearDisplay,
                calculate,
              ),
              buildRow(
                ['1', '2', '3', '+'],
                [
                  Colors.grey[850]!,
                  Colors.grey[850]!,
                  Colors.grey[850]!,
                  Colors.orange,
                ],
                appendToDisplay,
                clearDisplay,
                calculate,
              ),
              buildLastRow(appendToDisplay, calculate),
            ],
          ),
        ],
      ),
    );
  }
}