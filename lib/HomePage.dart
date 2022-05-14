import 'package:flutter/material.dart';
import 'drawer.dart';

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
      body: const Center(child: Text("This is home page.")),
      drawer: MyDrawer(),
    );
  }
}
