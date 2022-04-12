class Product {
  String? name;
  double? price;
  String? vendor;
  String? imageUrl;
  String? category;
  String? details;
  bool? isFavorite;

  Product(
      {this.name,
      this.vendor,
      this.price,
      this.imageUrl,
      this.category,
      this.isFavorite,
      this.details});

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        name: map["name"],
        vendor: map["vendor"],
        price: map["price"],
        category: map["category"],
        imageUrl: map["imageUrl"],
        isFavorite: map["isfavorite"],
        details: map["details"]);
  }
}
