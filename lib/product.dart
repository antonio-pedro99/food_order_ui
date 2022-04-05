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
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/5882488ae81acb96424ffaaf.png"));
    items.add(Product(
        name: "Burger Patty",
        price: 5.89,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/hamburger-11526063752qxn1oxfiyv-removebg-preview.png"));
    items.add(Product(
        name: "King Whopper",
        price: 10,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/png-clipart-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king-removebg-preview.png"));
    items.add(Product(
        name: "Craft-Beef Cheese",
        price: 8.0,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/Craft-beef-burger-with-cheese-png-removebg-preview.png"));
    items.add(Product(
        name: "Beef Burger",
        price: 9.30,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/hamburger-big-king-cheeseburger-whopper-fast-food-png-favpng-iYKjU09RG2R3b0RwJL5FniJ9b-removebg-preview.png"));
    items.add(Product(
        name: "King Black",
        price: 6.89,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/471-4712985_transparent-burger-king-png-halloween-whopper-png-png-removebg-preview.png"));
    items.add(Product(
        name: "Whopper Combo",
        price: 8.89,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/png-clipart-big-king-whopper-hamburger-cheeseburger-mcdonald-s-big-mac-burger-king-removebg-preview.png"));
    items.add(Product(
        name: "Bacon Cheeseburger",
        price: 5.89,
        vendor: "Burger King",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/imgbin-cheeseburger-whopper-hamburger-bacon-patty-burger-king-r3qKNTmFJa0PDq2MfhNei1A2p-removebg-preview.png"));
    items.add(Product(
        name: "Double-Whopper Combo",
        price: 7.4,
        vendor: "Burger Club",
        category: "burger",
        imageUrl:
            "https://raw.githubusercontent.com/antonio-pedro99/food_order_ui/master/images/hamburger-veggie-burger-fast-food-cheeseburger-buffalo-burger-png-favpng-Z7uMZ87SJFExjMn98WDGATAe6-removebg-preview.png"));

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
