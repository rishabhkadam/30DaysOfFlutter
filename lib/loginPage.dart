import 'package:flutter/material.dart';
import 'package:testfile/routes.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      Image.asset(
        'assets/images/loginimage.png',
        height: 150,
        width: 150,
      ),
      SizedBox(
        height: 20,
      ),
      const Text(
        'Welcome!',
        style: TextStyle(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter username',
                labelText: 'Username',
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter password',
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Login'),
              style: TextButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {
               Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
          ],
        ),
      )
    ]));
  }
}
