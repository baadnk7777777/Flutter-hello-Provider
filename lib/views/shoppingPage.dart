import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloprovider/controllers/cart-controller.dart';
import 'package:helloprovider/models/product.dart';

import '../controllers/shopping-controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ถ้าไม่มีส่วนของ Appbar เราจะไม่รู้ขอบเขตของหน้าจอ จะเป็นการเพิ่ม SafeArea เข้าไป.
        child: Column(
          children: [
            Expanded(child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products
                      .length, // Error ถ้าไม่ได้ระบุจำนวน ที่มาจาก Controller.
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                        '${controller.products[index].productDescription}',
                                      ),
                                    ]),
                                Text(
                                  '${controller.products[index].productPrice}',
                                  style: TextStyle(fontSize: 24),
                                )
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print('Add to Cart');

                                cartController
                                    .addToCart(controller.products[index]);
                              },
                              child: Text('Add to Cart'),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )),
            GetX<CartController>(
              builder: (controller) {
                return Text('Total amount: ${controller.totalPrice}');
              },
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: GetX<CartController>(
          builder: (controller) {
            return Text('${controller.count}');
          },
        ),
        icon: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
