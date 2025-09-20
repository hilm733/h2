
import 'package:flutter/material.dart';
class Log extends StatelessWidget {

  Log({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "login",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.nightlight_round),
            ),
          ],
        ),
        // drawer:DDrawer(context),

      ),
    );
  }
}
