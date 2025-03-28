import 'package:calculator_app/constants/constants.dart';
import 'package:calculator_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            child: Text("12345", style: Constants.styleOne),
            alignment: Alignment.centerRight,
          ),
          Divider(color: Colors.white, thickness: 1, indent: 50, endIndent: 50),
          Container(
            margin: EdgeInsets.only(right: 13),
            child: Text("12345", style: Constants.styleOne),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Custombutton(btnColor: Colors.grey, btnText: "AC"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.grey, btnText: "c"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.grey, btnText: "%"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.orange, btnText: "/"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "7"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "8"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "9"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.orange, btnText: "*"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "4"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "5"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "6"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.orange, btnText: "-"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "1"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "2"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "3"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.orange, btnText: "+"),
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
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "0"),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.blueGrey, btnText: "."),
              ),
              Expanded(
                child: Custombutton(btnColor: Colors.orange, btnText: "="),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
