import 'package:flutter/material.dart';
import 'package:testfile/loginPage.dart';
import 'package:testfile/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:const Text('This is home page.'),
      initialRoute: '/LoginPage',
      routes: {'/LoginPage': (context) => const loginPage(),
      "/home": (context) =>  MyApp()
      },
    );
  }
}
