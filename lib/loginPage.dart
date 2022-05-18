import 'package:flutter/material.dart';
import 'package:testfile/routes.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: ElevatedButton(
          child:const Text('login'),
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
        ),
      ),
    );
  }
}
