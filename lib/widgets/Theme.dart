import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white, 
          elevation: 0,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 64, 64)),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark
      );
}
