import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
           Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
           Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
           Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
           Expanded(
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
