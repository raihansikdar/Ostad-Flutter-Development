import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

   

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter APP"),
      ),

      body: Center(
        child: Text(
          counter.toString(),
          style: const TextStyle(fontSize: 22),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              counter--;
              setState(() {
                
              });
            },
            child: const Icon(Icons.remove),
          ),

           const SizedBox(
            width: 10,
          ),
          
            FloatingActionButton(
            onPressed: () {
              counter = 0;
              setState(() {
                
              });
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),

    );
  }
}
