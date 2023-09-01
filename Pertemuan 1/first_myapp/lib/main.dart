import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp (Braman T)'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "Braman Tyamahendrawan",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "2141720097",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "kelas TI-3C",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
