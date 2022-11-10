import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("user name"),
                accountEmail: Text("sample@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
