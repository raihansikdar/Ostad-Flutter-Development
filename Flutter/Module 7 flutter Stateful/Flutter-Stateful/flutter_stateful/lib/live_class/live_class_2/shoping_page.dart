import 'package:flutter/material.dart';

import 'product_page.dart';

class ShopingPage extends StatefulWidget {
  const ShopingPage({super.key});

  @override
  State<ShopingPage> createState() => _ShopingPageState();
}

class _ShopingPageState extends State<ShopingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoping Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProductPage(),
                    ),
                  );
                },
                child: const Text("ProductPage"),
              ),
          ],
        ),
      ),
    );
  }
}