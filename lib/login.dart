
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
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.7,
              colors: [Colors.blueAccent.shade400, Colors.blue.shade200],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade800, Colors.teal.shade200],
                  ),
                  // color: Colors.black,
                  border: Border.all(color: Colors.indigoAccent, width: 3),
                  borderRadius: BorderRadius.circular(40),
                ),
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
                      TextFormField(

                        // textDirection:TextDirecton.rtl,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Email",
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      TextFormField(

                        // textDirection:TextDirecton.rtl,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: "enter password",
                          labelText: " password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              child: Text(
                                "login",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              child: Text(
                                "up",
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
          ),
        ),
      ),
    );
  }
}
