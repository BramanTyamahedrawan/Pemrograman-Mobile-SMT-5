import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> data = ['Muhammad', 'Subul', 'As-Salam'];

  var _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown'),
      ),
      body: Center(
        child: DropdownButton(
          hint: const Text('Pilih...'),
          value: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value.toString();
            });
          },
          items: data
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
