import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: PreferredSize(
              child: Container(color: Colors.black, height: 3),
              preferredSize: Size.fromHeight(3.0)),
          title: Text(
            "KeyMate",
            style: TextStyle(
                fontFamily: "Gemunu Libre",
                fontWeight: FontWeight.bold,
                fontSize: 25),
          )),
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Colors.orange[100],
                    Colors.orange[300],
                    Colors.orange[900]
                  ])),
              alignment: Alignment(0, 0.4), //for the white container
              child: Container(
                  width: 318,
                  height: 510,
                  color: Colors.white54,
                  alignment: Alignment(0, -0.29),
                  child: Text("KeyMate",
                      style: TextStyle(
                          fontFamily: 'Gemunu Libre',
                          fontSize: 40,
                          fontWeight: FontWeight.bold))))),
    );
  }
}
