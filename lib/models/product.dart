class Product {
  final int id;
  final String productName;
  final String productImages;
  final String productDescription;
  final double productPrice;

  Product({
    required this.id,
    required this.productName,
    required this.productImages,
    required this.productDescription,
    required this.productPrice,
  });
}

// สร้าง models สำหรับมาเก็บข้อมูลจาก   API ซึ่งค่าจะต้องสัมพันธ์กับ Response ของ API.
