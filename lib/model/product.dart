class Item {
  String imgPath;
  double price;
  String name;
  Item({required this.imgPath, required this.name, required this.price});
}

final List<Item> items = [
  Item(name: "Audi", price: 15000, imgPath: "assets/img/Audi.png"),
  Item(name: "Volex", price: 30000, imgPath: "assets/img/w.png"),
  Item(name: "Hyundai", price: 22000, imgPath: "assets/img/hyundai.png"),
  Item(name: "Kia selots", price: 18000, imgPath: "assets/img/kia selots.png"),
  Item(name: "Nissan", price: 20000, imgPath: "assets/img/Nissan.png"),
  Item(name: "Volvo 2021", price: 32000, imgPath: "assets/img/volvo.png"),
  Item(name: "Volvo 2019", price: 28000, imgPath: "assets/img/volvo.png"),
  Item(name: "Kia", price: 15000, imgPath: "assets/img/kia.png"),
];
