import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Flutter',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyHomePage(title: 'Braman Tyamahendrawn (2141720097)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.indigoAccent,
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Container(color: Colors.red),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Expanded(
              child: Container(color: Colors.blue),
            ),
            Expanded(
              child: Container(color: Colors.green),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Expanded(
                child:
                    Container(color: Colors.red, child: const Text('merah'))),
            Expanded(
                child: Container(color: Colors.blue, child: const Text('biru')))
          ],
        ),
      ),
    );
  }
}
