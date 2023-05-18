import 'package:get/get.dart';

class CounterController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("Counter Controller onInit");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("Counter Controller onClose");

    super.onClose();
  }

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
