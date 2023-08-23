import 'package:flutter/material.dart';

class SumApp extends StatefulWidget {
  const SumApp({super.key});

  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp> {
  Map<String, double> inputNumberValue = {"num1": 0, "num2": 0};
  double sum = 0;

  myInputOnChange(inputKey, inputValue) {
    setState(() {
      inputNumberValue.update(inputKey, (value) => double.parse(inputValue));
    });
  }

  addAllInput() {
    sum = inputNumberValue["num1"]! + inputNumberValue["num2"]!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(sum.toString()),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                onChanged: (value) {
                  myInputOnChange("num1", value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("first number"),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                onChanged: (value) {
                  myInputOnChange("num2", value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Second number"),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Wrap(
              children: [
                OutlinedButton(
              onPressed: () {
                setState(() {
                  addAllInput();
                  
                });
              },
              child: const Text("add"),
            ),

             OutlinedButton(
              onPressed: () {
                setState(() {
                  addAllInput(
                    
                  );
                  
                });
              },
              child: const Text("add"),
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
