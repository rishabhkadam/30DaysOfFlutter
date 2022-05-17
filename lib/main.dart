import 'package:flutter/material.dart';
import 'package:testfile/HomePage.dart';
import 'package:testfile/widgets/Theme.dart';
import 'package:testfile/loginPage.dart';
import 'package:testfile/routes.dart';
import 'package:testfile/catelog.dart';


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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: const Text('This is home page.'),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const loginPage(),
        MyRoutes.homeRoute: (context) => const HomePage()
      },
    );
  }
}
