import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:apps/widgets/drawer.dart';

class drawerd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl = "https://bit.ly/3JC3gvC";
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Dhyey Savaliya",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "openSans"),
                ),
                accountEmail: Text('dhyey712@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                "Menu",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                    fontFamily: "openSans",
                    fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.white,
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                    fontFamily: "openSans",
                    fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              iconColor: Colors.white,
              title: Text(
                "Mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "openSans",
                    letterSpacing: 0.8,
                    fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              iconColor: Colors.white,
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "openSans",
                    letterSpacing: 0.8,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
