import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Page"),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
           Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
           Flexible(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
           Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
           Flexible(
            flex: 1,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
