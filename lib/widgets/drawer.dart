import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/img.jpg';

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
              leading: Icon((Icons.person)),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon((Icons.email)),
              title: Text("Email"),
            ),
            ListTile(
              leading: Icon((Icons.phone)),
              title: Text("Phone"),
            ),
            ListTile(
              leading: Icon((Icons.logout)),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
