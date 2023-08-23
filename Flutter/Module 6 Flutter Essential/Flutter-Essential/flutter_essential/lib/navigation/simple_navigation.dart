import 'package:flutter/material.dart';
import 'package:flutter_essential/navigation/page_1.dart';
import 'package:flutter_essential/navigation/page_2.dart';

class HomePageForNavigation extends StatelessWidget {
  const HomePageForNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Appbar"),
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
                      builder: (context) =>  const Page1(message: "This is from home",),
                    ),
                  );
                },
                child: const Text("Page 1"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page2(message: "this is from home",),
                    ),
                  );
                },
                child: const Text("Page 2"),
              ),
            ],
          ),
        ));
  }
}
