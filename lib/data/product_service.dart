import 'package:bloc_sample/models/product.dart';

class ProductService {
  // ignore: deprecated_member_use
  static List<Product> products = new List<Product>();

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Asus Laptop", 3000));
    products.add(new Product(2, "Lenovo Laptop", 4500));
    products.add(new Product(3, "Acer Laptop", 5750));

    return products;
  }
}
