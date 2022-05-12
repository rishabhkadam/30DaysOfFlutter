

import 'package:flutter/material.dart';

void main() {
  runApp(const testApp());
}

// ignore: camel_case_types
class testApp extends StatefulWidget {
  const testApp({Key? key}) : super(key: key);

  @override
  _testAppState createState() => _testAppState();
}

// ignore: camel_case_types
class _testAppState extends State<testApp> {
  String ButtonName = 'Press';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test File'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    ButtonName = 'ho gya.';
                  });
                  // ignore: avoid_print
                },
                icon: const Icon(Icons.help_outline),
                label: Text(ButtonName),
              )
            ],
          ),
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                label: "Setting", icon: Icon(Icons.settings)),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
