import 'package:flutter/material.dart';

void main() {
  runApp(const DatePicker());
}

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDatePicker(),
    );
  }
}

class MyDatePicker extends StatefulWidget {
  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedDate.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                ).then(
                  (value) => setState(
                    () {
                      _selectedDate = value!;
                    },
                  ),
                );
              },
              child: const Text('Date Picker'),
            )
          ],
        ),
      ),
    );
  }
}
