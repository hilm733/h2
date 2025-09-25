import 'package:corce_app/send_email.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dark_light.dart';
import 'login.dart';
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
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Log()),
                );
              },
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
_showMessagingDialog(BuildContext context, dynamic n) {
  // print(all[1]);
  TextEditingController text_2 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      // ودجت Dialog هو الذي يسمح بتحديد حجم ثابت للنافذة
      return Dialog(
        // يمكنك وضع خصائص مثل الشكل هنا
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // هذا هو الودجت الذي سيحتوي على كل عناصر النافذة
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 20,
                children: [
                  TextField(
                    controller: text_2,
                    decoration: InputDecoration(
                      label: Text("ملاحظة..."),
                      hintText: "اكتب ملاحظك هنا",
                    ),
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            sendSimpleEmail(text_2.text, n);
                            Navigator.pop(context);

                          },

                          child: Text(
                            "send",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

