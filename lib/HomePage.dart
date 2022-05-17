import 'package:flutter/material.dart';
import 'package:testfile/widgets/item_widgets.dart';
import 'widgets/drawer.dart';
import 'package:testfile/catelog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
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
          return ItemWidget(item: CatalogModel.items[index],);
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
