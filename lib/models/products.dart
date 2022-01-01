class Product {
  String name;
  String image;
  String tag;
  double price;
  double rate;

  Product(
      {required this.image,
      required this.name,
      required this.price,
      this.rate = 0,
      this.tag = ''});
}

List<Product> products = [
  Product(
      name: "Pasta",
      image: "assets/images/pasta.png",
      price: 10.0,
      rate: 4.7,
      tag: "Main"),
  Product(
      name: "Meet",
      image: "assets/images/meat.jpeg",
      price: 20.0,
      rate: 3.7,
      tag: "Main"),
  Product(
      name: "Fish",
      image: "assets/images/fish.png",
      price: 25.0,
      rate: 4.5,
      tag: "Main"),
  Product(
      name: "Fruit",
      image: "assets/images/fruit.png",
      price: 13.0,
      rate: 4.6,
      tag: "Desert"),
  Product(
      name: "Chicken",
      image: "assets/images/chicken.png",
      price: 40.0,
      rate: 4.2,
      tag: "Main")
];
