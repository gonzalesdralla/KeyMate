import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:key_mate/pages/landing.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'KeyMate',
        theme: ThemeData(
          primaryColor: Colors.orangeAccent,
        ),
        home: Landing());
  }
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      backgroundColor: Colors.orangeAccent,
      image: Image.asset('assets/keygif2.gif'),
      photoSize: 156.0,
      navigateAfterSeconds: '/landing',
    );
  }
}
