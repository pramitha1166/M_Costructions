class Item {
  Item({
    required this.id,
    required this.quantity,
    required this.title,
  });

  String id;
  int quantity;
  String title;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
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
