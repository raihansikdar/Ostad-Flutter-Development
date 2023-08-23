import 'package:flutter/material.dart';

import 'card_page.dart';
import 'shoping_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement( //last screen destroy kore dibe
                // Navigator.pushAndRemoveUntil( // r piche bak kora jabe na
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CardPage(
                              productName: 'Phone',
                            ))).then((value) {
                  message = value;
                  setState(() {});
                });
              },
              child: const Text("CardPage"),
            ),
          ],
        ),
      ),
    );
  }
}
