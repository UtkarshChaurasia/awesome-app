import 'package:awesomeflutter/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
  ));
}
