import 'package:flutter/material.dart';

import 'routing_home_page.dart';
import 'shoping_page.dart';

class CardPage extends StatelessWidget {
  final String productName;
  const CardPage({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
             Text(productName),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,"hello done");
              },
              child: const Text("Back to product page"),
            ),
          ],
        ),
      ),
    );
  }
}
