import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Center(
        child: Card(
          elevation: 40,
         // shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.red,
          child: Container(
            height: 200,
            width: 200,
              decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1), // Shadow color
          spreadRadius: 5, // Controls the spread of the shadow
          blurRadius: 0, // Controls the blur effect of the shadow
          offset: const Offset(20, 30), // Controls the position of the shadow
        ),
      ],
    ),
          ),
        ),
      ),
    );
  }
}
