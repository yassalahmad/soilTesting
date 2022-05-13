import 'package:flutter/material.dart';
import 'package:soiltesting/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Soil Testing",
      home: HomePage(),
    );
  }
}
