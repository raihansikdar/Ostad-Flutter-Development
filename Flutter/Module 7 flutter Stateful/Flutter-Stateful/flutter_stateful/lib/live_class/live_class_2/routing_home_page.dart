import 'package:flutter/material.dart';

import 'page_one.dart';
import 'page_two.dart';

class RoutingHomePage extends StatefulWidget {
  const RoutingHomePage({super.key});

  @override
  State<RoutingHomePage> createState() => _RoutingHomePageState();
}

class _RoutingHomePageState extends State<RoutingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routing"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnePage(),
                  ),
                );
              },
              child: const Text("Page One"),
            ),

              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PageTwo(),
                  ),
                );
              },
              child: const Text("Page Two"),
            ),
          ],
        ),
      ),
    );
  }
}
