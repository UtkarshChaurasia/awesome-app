import 'package:awesomeflutter/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: LoginPage(), //Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
  ));
}
