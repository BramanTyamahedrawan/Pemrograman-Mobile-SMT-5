import 'package:flutter/material.dart';
import 'datepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            containerRow(),
            const Padding(padding: EdgeInsets.all(10)),
            containerData(context),
            const Padding(padding: EdgeInsets.all(10)),
            containerDatePicker()
          ],
        ),
      ),
    );
  }

  Expanded containerDatePicker() {
    return Expanded(
      child: Container(
        color: const Color(0xFF687EFF),
        child: MyDatePicker(),
      ),
    );
  }

  Expanded containerData(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xFF80B3FF),
        width: MediaQuery.of(context).size.width,
        child: const Text(
          'Nama: Muhammad Subul Al-Salam',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Expanded containerRow() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFB6FFFA),
              child: const Icon(
                Icons.person,
                size: 150,
                color: Colors.blue,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Expanded(
            child: Container(
              color: const Color(0xFF98E4FF),
              child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1631947430066-48c30d57b943?auto=format&fit=crop&q=80&w=1916&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
            ),
          ),
        ],
      ),
    );
  }
}
