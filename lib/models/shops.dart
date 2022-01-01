class Shop {
  String name;
  String image;
  double rate;

  Shop({required this.name, this.rate = 0.0, required this.image});
}

List<Shop> shops = [
  Shop(name: "McDonalds", image: "assets/images/restaurant1.jpeg", rate: 4.9),
  Shop(name: "KFC", image: "assets/images/restaurant2.jpeg", rate: 4.9),
  Shop(name: "Burger King", image: "assets/images/restaurant3.jpeg", rate: 4.9),
];
