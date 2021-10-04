class Product {
  Product({
    required this.id,
    required this.quantity,
    required this.title,
  });

  String id;
  int quantity;
  String title;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        quantity: json["quantity"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "title": title,
      };
}
