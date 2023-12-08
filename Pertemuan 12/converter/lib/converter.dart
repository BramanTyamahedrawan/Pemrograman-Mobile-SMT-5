import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> data = ['Reamur', 'Celcius', 'Fahrenheit'];

  var _selectedValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Konverter Suhu'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Celcius',
                  hintText: 'Masukkan Angka Temperatur dalam Celcius',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton(
                isExpanded: true,
                value: _selectedValue,
                items: data
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value.toString();
                  });
                },
              ),
              const Text('Hasil'),
              const Text('365'),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Konversi Suhu'),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
