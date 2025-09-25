import 'package:flutter/material.dart';

class drawerr extends StatelessWidget {
  drawerr({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("name", style: TextStyle(fontSize: 18)),
                  accountEmail: Text("email", style: TextStyle(fontSize: 15)),
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person, size: 50),
                  ),
                ),
              ],
            ),
            ListTile(leading: BackButton(), title: Text("home")),
            ListTile(
              leading: Icon(Icons.output),
              title: Text("oute"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.output),
              title: Text("note"),
              onTap: () {},
            ),

          ],
        ),
      ),
    );
  }
}
