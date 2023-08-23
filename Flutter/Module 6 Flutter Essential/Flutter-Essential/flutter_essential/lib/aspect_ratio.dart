import 'package:flutter/material.dart';


class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio"),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        color: Colors.blue,
        alignment: Alignment.center,
        child: AspectRatio(
           aspectRatio: 16/9,
          child: Container(
            color: Colors.red,
          ),
        )
      ),
    );
  }
}