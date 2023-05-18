import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloprovider/controllers/couter-controller.dart';

class CounterGetX extends StatelessWidget {
  CounterGetX({super.key});

  CounterController counterController =
      Get.put(CounterController()); // แค่เขียนก็เรียกใช้เลย.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You have pushed the button this many times: ",
            ),
            GetBuilder<CounterController>(
              builder: (value) {
                return Text(
                  "${value.counter}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const Divider(
              thickness: 3,
            ),
            GetX<CounterController>(
                init: CounterController(),
                builder: (value) {
                  return Text("${value.counterObs}");
                }),
            const Divider(
              thickness: 3,
            ),
            const Text("From Obs"),
            Obx(() => Text("${counterController.counterObs}")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.find<CounterController>().increment();
          Get.find<CounterController>().counterObsIncrement();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
