import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:key_mate/pages/generation.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
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
              alignment: Alignment.center,
              child: Container(
                  width: 218,
                  height: 320,
                  color: Colors.white54,
                  alignment: Alignment(0, -0.29),
                  child: Stack(children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(45.0),
                        margin: EdgeInsets.all(5.0),
                        child: Column(children: <Widget>[
                          Text("KeyMate",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Gemunu Libre',
                                  fontSize: 37,
                                  fontWeight: FontWeight.bold)),
                          Text("Some quotes here!")
                        ])),
                    Positioned(
                        top: 130,
                        right: 60,
                        height: 100,
                        width: 100,
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/keygif2.gif'),
                              fit: BoxFit.fill,
                            )))),
                    Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(5.0),
                        alignment: Alignment(1, 1),
                        child: ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                  color: Colors.orange[900],
                                  onPressed: () {
                                    print(Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Generation())));
                                  },
                                  child: Text("GENERATE")),
                              FlatButton(
                                  color: Colors.orange[900],
                                  onPressed: () {
                                    print("clicked2");
                                  },
                                  child: Text("FAVORITES"))
                            ]))
                  ])))),
    );
  }
}
