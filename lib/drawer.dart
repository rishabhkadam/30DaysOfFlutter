import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'data:image/jpeg;base64,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';

    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlue),
                accountName: Text("RISHABH KADAM"),
                accountEmail: Text("rishabh.kadam20@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                (Icons.home),
              ),
              title: Text("Home"),
            ),

            ListTile(
              leading: Icon(
                (Icons.person)
              ),
              title: Text("Profile"),
            ),

            ListTile(
              leading: Icon(
                (Icons.email)
              ),
              title: Text("Email"),
            ),

            ListTile(
              leading: Icon(
                (Icons.phone)
                ),
              title: Text("Phone"),
            ),

            ListTile(
              leading: Icon(
                (Icons.logout)
                ),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
