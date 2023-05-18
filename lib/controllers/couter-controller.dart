import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;

  // Function Increment number.

  void increment() {
    counter++;
    update(); // เมื่อ vaiable มีการเปลี่ยนค่า ให้ทำการ Rebuild widgets.
  }

  var counterObs = 0.obs;

  void counterObsIncrement() {
    counterObs++;
  }
}
