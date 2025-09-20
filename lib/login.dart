
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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(

                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 20,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person_outline,
                          size: 100,
                        ),
                      ),
                      TextFormField(
                        // textDirection:TextDirecton.rtl,
                        decoration: InputDecoration(
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          // floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: Icon(Icons.person),
                          hintText: "Enter user_name",
                          labelText: " user_name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
