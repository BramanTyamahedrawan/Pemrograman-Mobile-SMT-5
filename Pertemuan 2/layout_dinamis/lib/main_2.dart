import 'package:flutter/material.dart';

void main() {
  runApp(historypage());
}

class historypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Transaction History',
            style: TextStyle(color: const Color.fromARGB(255, 203, 14, 0)),
          ),
        ),
        body: HistoryMain(),
      ),
    );
  }
}

class HistoryMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
