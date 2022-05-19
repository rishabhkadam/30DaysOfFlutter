class CatalogModel {
  final items = [
    Item(
        id: 001,
        name: 'iPhone 12 Pro Max',
        desc: "Apple iPhone 12 Generation",
        price: 999,
        color: '#33505a',
        imageUrl: 'https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg')
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String imageUrl;
  final String color;

  Item(
      {
      required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.imageUrl,
      required this.color,
      });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      imageUrl: map['ImageUrl'],
      color: map['color'],
    );
  }

  toMap() => {
    "id" = id,
    'name' = name,
    'desc' = desc,
    'price' = price,
    'imageUrl' = imageUrl,
    'color' = color
  };
}
