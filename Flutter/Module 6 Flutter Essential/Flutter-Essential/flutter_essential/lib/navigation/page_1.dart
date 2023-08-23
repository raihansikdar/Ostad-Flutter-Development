import 'package:flutter/material.dart';

import 'page_2.dart';

class Page1 extends StatelessWidget {
  final String message;
  const Page1({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  const Text("Page 1"),
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
                      builder: (context) => const Page2(message: "This is from 1",),
                    ),
                  );
                },
                child: const Text("Go to Page 2"),
              ),
              Text(message),
            ],
          ),
        ));
  }
}
