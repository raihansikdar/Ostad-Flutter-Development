import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_management/counter_getx_builder.dart';
import 'package:getx_management/counter_obx.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final CounterController _counterController = Get.put(CounterController());
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
            ElevatedButton(
                onPressed: () {
                 
                  Get.to(() => CounterObx());
                },
                child: const Text("Get Obx")),
              const  SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  _counterController.increment(value: 5);
                  Get.to(() => CounterGetxBuilder());
                },
                child: const Text("Get Builder"))
          ],
        ),
      ),
    );
  }
}






