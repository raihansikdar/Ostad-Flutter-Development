import 'package:flutter/material.dart';
import 'package:flutter_stateful/live_class/live_class_1/counter_screen.dart';
import 'package:flutter_stateful/live_class/live_class_1/live_class_1.dart';



class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Stateful"),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) =>  LiveClass1()),
            //     );
            //   },
            //   child: const Text("live Class 1"),
            // ),
               ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CounterScreen()),
                );
              },
              child: const Text("Counter Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
