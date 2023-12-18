import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CounterGetxBuilder extends StatelessWidget {
  CounterGetxBuilder({super.key});
  final CounterController _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Builder"),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (_) => Text(
            _counterController.count.toString(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterController.increment(value: 5);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterController extends GetxController {
  int count = 0;
  void increment({required int value}) {
    count = count + value;
    update();
  }
}
