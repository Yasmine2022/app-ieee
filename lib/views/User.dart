
import 'Product.dart';

class User {
  final int? id;
  int total;
  List<Product> products;
  int? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;
  User({
    required this.id,
    required this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
    required this.products,
  });



  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    total: json["total"],
    discountedTotal: json["discountedTotal"],
    userId: json["userId"],
    totalProducts: json["totalProducts"],
    totalQuantity: json["totalQuantity"],
      products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "total": total,
    "discountedTotal": discountedTotal,
    "userId": userId,
    "totalProducts": totalProducts,
    "totalQuantity": totalQuantity,
  };
}

