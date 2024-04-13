import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/projects.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => MyHome(),
        'about': (context) => About(),
        'projects': (context) => Projects(),
      }));
}
