import 'package:flutter/material.dart';

class CircleAndProgress extends StatelessWidget {
  const CircleAndProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Circle and Progress"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 10.0,
              backgroundColor: Colors.greenAccent,
            ),
            SizedBox(height: 20,),
            LinearProgressIndicator(
              color: Colors.blue,
              minHeight: 10,
              backgroundColor: Colors.amber,
            ),
          ],
        )
      ),
    );
  }
}
