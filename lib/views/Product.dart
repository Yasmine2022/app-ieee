class Product {
  int id;
  String title;
  int price;
  int? quantity;
  int? total;
  double? discountPercentage;
  int? discountedPrice;
  Product({
    required this.id,
    required this.title,
    required this.price,
    this.quantity,
    this.total,
    this.discountPercentage,
    this.discountedPrice,
  });


  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    quantity: json["quantity"],
    total: json["total"],
    discountPercentage: json["discountPercentage"].toDouble(),
    discountedPrice: json["discountedPrice"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "quantity": quantity,
    "total": total,
    "discountPercentage": discountPercentage,
    "discountedPrice": discountedPrice,
  };
}
