import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  final List<String> history;

  HistoryScreen({required this.history});

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  void clearHistory() {
    setState(() {
      widget.history.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), 
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: widget.history.isEmpty
          ? Center(
              child: Text(
                "No history available",
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.history.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            widget.history[index],
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 75,
                  height: 75,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(20),
                    ),
                    onPressed: clearHistory,
                    child: Icon(Icons.delete, color: Colors.white, size: 30),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
    );
  }
}
