import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CounterObx extends StatelessWidget {
  CounterObx({Key? key}) : super(key: key);

  final CounterControllerObx _counterControllerObx = Get.put(CounterControllerObx());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                _counterControllerObx.count.toString(),
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterControllerObx.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterControllerObx extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    count++;
  }
}




/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Counter App"),
      ),
      body: Center(
        child: Obx(
          () => Text(
            count.toString(),
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

*
* */