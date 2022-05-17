class CatalogModel {
  static final items = [
    Item(
        id: 001,
        name: 'iPhone 12 Pro Max',
        desc: "Apple iPhone 12 Generation",
        price: 999,
        color: '#33505a',
        ImageUrl: 'https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg')
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String ImageUrl;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.ImageUrl,
      required this.color}
      );
}
