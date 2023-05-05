import 'package:get/state_manager.dart';
import 'package:helloprovider/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs; // ทำให้ product เป็น observable

  @override
  void onInit() {
    // ทำงานก่อน build
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        productName: "ส้มโอ",
        productImages: "abd",
        productDescription: "ส้มโอหวานมากๆ",
        productPrice: 100,
      ),
      Product(
        id: 2,
        productName: "แตงโม",
        productImages: "abd",
        productDescription: "แตงโมหวานมากๆ",
        productPrice: 200,
      ),
      Product(
        id: 3,
        productName: "มะพร้าวน้ำหอม",
        productImages: "abd",
        productDescription: "มะพร้าวน้ำหอมหวานมากๆ",
        productPrice: 300,
      ),
      Product(
        id: 4,
        productName: "มะม่วง",
        productImages: "abd",
        productDescription: "มะม่วงหวานมากๆ",
        productPrice: 400,
      ),
      Product(
        id: 5,
        productName: "กล้วย",
        productImages: "abd",
        productDescription: "กล้วยหวานมากๆ",
        productPrice: 500,
      ),
    ];

    products.assignAll(productResult);
  }
}
