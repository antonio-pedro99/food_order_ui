class Product {
  String? name;
  double? price;
  String? vendor;
  String? imageUrl;
  String? category;

  Product({this.name, this.vendor, this.price, this.imageUrl, this.category});

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        name: map["name"],
        vendor: map["vendor"],
        price: map["price"],
        category: map["category"],
        imageUrl: map["imageUrl"]);
  }

  static List<Product> getProducts() {
    List<Product> items = [];

    //burgers
    items.add(Product(
        name: "Cheese Veggie",
        price: 7.4,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "Burger Patty",
        price: 5.89,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "King Whopper",
        price: 10,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "Craft-Beef Cheese",
        price: 8.0,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "Beef Burger",
        price: 9.30,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "King Black",
        price: 6.89,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "Whopper Combo",
        price: 8.89,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "Bacon Cheeseburger",
        price: 5.89,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));
    items.add(Product(
        name: "Double-Whopper Combo",
        price: 7.4,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://w7.pngwing.com/pngs/84/194/png-transparent-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king.png"));

    /*  //pizza
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));

    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));

    //coffee
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));

    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));

    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));

    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));

    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: ""));
    items.add(
        Product(name: "", price: 0, vendor: "", category: "", imageUrl: "")); */

    return items;
  }
}
