import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Pemrograman Mobile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Braman Tyamahendrawan | 2141720097'),
          backgroundColor: const Color.fromARGB(255, 31, 61, 131),
        ),
        backgroundColor: Colors.indigo[100],
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color(0xFFB6FFFA),
                      ),
                    ),
                    Expanded(
                      child: Container(color: const Color(0xFF98E4FF)),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(color: const Color(0xFF80B3FF))),
              Expanded(child: Container(color: const Color(0xFF687EFF))),
            ],
          ),
        ),
      ),
    );
  }
}
