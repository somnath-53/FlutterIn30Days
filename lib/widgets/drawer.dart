import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.cyan[400],
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan[400]),
                margin: EdgeInsets.zero,
                accountName: Text("Somnath Gangdhar"),
                accountEmail: Text("somnathgangdhar53@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage("assets/images/pic.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.group,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "New Group",
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Contacts",
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Call",
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.camera,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Albums",
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Saved Messages",
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.1,
              ),
            ),
            Divider(
              color: Colors.cyan[550],
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person_badge_plus,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Invite Friends",
                textScaleFactor: 1.1,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.square_arrow_up,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Log Out",
                textScaleFactor: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
