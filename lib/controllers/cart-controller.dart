import 'package:get/state_manager.dart';
import 'package:helloprovider/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + item.productPrice);
  // เมื่อ cartItems มีการเปลี่ยนแปลง จะเข้ามา update ใน totalPrice ด้วยทันที

  int get count => cartItems.length;

  addToCart(Product product) {
    cartItems.add(product);
    //เมื่อเรียกใช้ก็จะเพิ่ม product เข้า cart.
  }
}
