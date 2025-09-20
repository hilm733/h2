import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dark_light.dart';
import 'login.dart';
void main() {
  runApp(A());
}
class A extends StatelessWidget {
  const A({super.key});
  @override
  Widget build(BuildContext context) {

    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      // --------------
      debugShowCheckedModeBanner: false,
      themeMode: themeNotifier.themeMode,
      theme: ThemeData(
        // تنسيق الوضع النهاري
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue.shade500,
        brightness: Brightness.light,

        // ... أضف المزيد من الألوان والتنسيقات للوضع النهاري
      ),
      darkTheme: ThemeData(
        // تنسيق الوضع الليلي
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black87,
        brightness: Brightness.dark,
        // ... أضف المزيد من الألوان والتنسيقات للوضع الليلي
      ),


      home:Log() ,
      // --------------
    );
  }
}
