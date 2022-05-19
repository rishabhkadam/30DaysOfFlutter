import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testfile/widgets/item_widgets.dart';
import 'widgets/drawer.dart';
import 'package:testfile/catelog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    List<Item> list = List.from(productsData)
        .map(
          (item) => Item.fromMap(item)
        )
        .toList();
    print(productsData);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'catalog App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
