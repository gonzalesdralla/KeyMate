import 'package:flutter/material.dart';
import 'package:key_mate/pages/landing.dart';
import 'package:key_mate/pages/generation.dart';

void main() => runApp(MaterialApp(routes: {
      '/': (context) => Landing(),
      '/generation': (context) => Generation()
    }));
