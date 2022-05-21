// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

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
  late final num id;
  late final String name;
  late final String desc;
  late final num price;
  late final String imageUrl;
  late final String color;

  // Item(
  //   this.id,
  //   this.name,
  //   this.desc,
  //   this.price,
  //   this.imageUrl,
  //   this.color,
  // );

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


  

  // Item copyWith({
  //   num? id,
  //   String? name,
  //   String? desc,
  //   num? price,
  //   String? imageUrl,
  //   String? color,
  // }) {
  //   return Item(
  //     id ?? this.id,
  //     name ?? this.name,
  //     desc ?? this.desc,
  //     price ?? this.price,
  //     imageUrl ?? this.imageUrl,
  //     color ?? this.color,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'name': name,
  //     'desc': desc,
  //     'price': price,
  //     'imageUrl': imageUrl,
  //     'color': color,
  //   };
  // }

  // factory Item.fromMap(Map<String, dynamic> map) {
  //   return Item(
  //     map['id'] as num,
  //     map['name'] as String,
  //     map['desc'] as String,
  //     map['price'] as num,
  //     map['imageUrl'] as String,
  //     map['color'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'Item(id: $id, name: $name, desc: $desc, price: $price, imageUrl: $imageUrl, color: $color)';
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  
  //   return other is Item &&
  //     other.id == id &&
  //     other.name == name &&
  //     other.desc == desc &&
  //     other.price == price &&
  //     other.imageUrl == imageUrl &&
  //     other.color == color;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //     name.hashCode ^
  //     desc.hashCode ^
  //     price.hashCode ^
  //     imageUrl.hashCode ^
  //     color.hashCode;
  // }
}

