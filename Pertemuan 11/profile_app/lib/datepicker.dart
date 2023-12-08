import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _selectedDate.toString(),
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 25),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.greenAccent,
              ),
            ),
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
            child: const Text(
              'Date Picker',
              style: TextStyle(color: Colors.indigo),
            ),
          )
        ],
      ),
    );
  }
}
