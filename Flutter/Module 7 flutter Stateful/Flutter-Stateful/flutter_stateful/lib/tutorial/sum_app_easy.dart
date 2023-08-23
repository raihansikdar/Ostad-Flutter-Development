import 'package:flutter/material.dart';

class AdditionScreen extends StatefulWidget {
  const AdditionScreen({super.key});

  @override
  State<AdditionScreen> createState() => _AdditionScreenState();
}

class _AdditionScreenState extends State<AdditionScreen> {
  int num1 = 0;
  int num2 = 0;
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addition App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  num1 = int.parse(value);
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter first number',
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  num2 = int.parse(value);
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter second number',
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  sum = num1 + num2;
                });
              },
              child: const Text('Add'),
            ),
            const SizedBox(height: 20),
            Text(
              'Sum: $sum',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}