import 'package:bai_tap_kiem_tra/views/flowerScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flower',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFlowerScreen(),
    );
  }
}
