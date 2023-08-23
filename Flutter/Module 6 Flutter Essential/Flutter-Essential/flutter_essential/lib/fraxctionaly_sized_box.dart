import 'package:flutter/material.dart';

class FractionalySizeBoxPage extends StatelessWidget {
  const FractionalySizeBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("FractionalySizeBoxPage"),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.3,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}