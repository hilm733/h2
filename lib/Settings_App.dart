import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';
import 'dark_light.dart';
import 'package:provider/provider.dart';

class settings extends StatelessWidget {
  settings({super.key});
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
    final cur = Theme.of(context);
    final a = themeNotifier.da();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: cur.scaffoldBackgroundColor,
        appBar: AppBar(title: Text("Settings"), centerTitle: true),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade200, Colors.blue.shade800],
            ),
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: [
              ListTile(
                leading: Icon(Icons.nightlight_round),
                title: Text("$a", style: TextStyle(fontSize: 20)),
                onTap: () {
                  themeNotifier.toggleTheme();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
