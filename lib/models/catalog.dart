import 'dart:html';

class CatalogModel {
  final items = [
    Item(
        id: 1,
        name: "iPhone 13 Pro Max",
        desc: "Apple iPhone 13th Generation",
        price: 107990,
        color: "#33505a",
        image: "https://bit.ly/3sUTi1D")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
