import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dark_light.dart';
class drawerr extends StatelessWidget {
  drawerr({super.key,required this.all});
  dynamic all;
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
    final cur = Theme.of(context);
    return Drawer(
      width: 200,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade200, Colors.blue.shade800],
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: cur.scaffoldBackgroundColor),
                  accountName: Text(all[0].toString(), style: TextStyle(fontSize: 18)),
                  accountEmail: Text(all[1].toString(), style: TextStyle(fontSize: 15)),
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
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {},
            ),
            AboutListTile(
    child: Text("Abute"),
    icon: Icon(Icons.info_outline),
    applicationIcon: Image.asset(
    "PHOTO/icon.jpg",
    width: 60,
    height: 60,
    ),
    applicationName: "CORSESS_App",
    applicationVersion: "0.0.1",
    applicationLegalese: "2025 my company ©",
    aboutBoxChildren: [Text("اعد هذا المشروع كجز من متطلب لمادة "
        "تطوير تطبيقات الهاتف النقال....")],

            ),


          ],
        ),
      ),
    );
  }
}

