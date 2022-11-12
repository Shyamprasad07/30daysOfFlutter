import 'dart:html';
class CatalogModel {
  static final items =[
    Item(
    id: 01,
    name: "Apple iPhone 14 Plus 128GB Blue",
    desc: "Advanced camera system for better photos in any light",
    price: 999,
    color: "#33505a",
    image: "https://m.media-amazon.com/images/I/61BGE6iu4AL._SX522_.jpg",
  )
  ];
}
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({ required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


