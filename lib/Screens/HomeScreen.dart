import 'package:calculator_app/constants/constants.dart';
import 'package:calculator_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void numClick(String btnText) {
    if (btnText == "Ac") {
      setState(() {
        exp = "";
        history = "";
      });
      mum1 = 0;
      num2 = 0;
    }
  }

  String exp = "";
  String history = "";
  double mum1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator", style: Constants.styleOne),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 13),
            child: Text(history, style: Constants.styleOne),
            alignment: Alignment.centerRight,
          ),
          Divider(color: Colors.white, thickness: 1, indent: 50, endIndent: 50),
          Container(
            margin: EdgeInsets.only(right: 13),
            child: Text(exp, style: Constants.styleOne),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  btnColor: Colors.grey,
                  btnText: "AC",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.grey,
                  btnText: "C",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.grey,
                  btnText: "%",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.orange,
                  btnText: "/",
                  callback: numClick,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "7",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "8",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "9",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.orange,
                  btnText: "*",
                  callback: numClick,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "4",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "5",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "6",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.orange,
                  btnText: "-",
                  callback: numClick,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "1",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "2",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "3",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.orange,
                  btnText: "+",
                  callback: numClick,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calculate, size: 30),
                  ),
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: "0",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.blueGrey,
                  btnText: ".",
                  callback: numClick,
                ),
              ),
              Expanded(
                child: CustomButton(
                  btnColor: Colors.orange,
                  btnText: "=",
                  callback: numClick,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
