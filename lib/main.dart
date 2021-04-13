import 'package:flutter/material.dart';
import 'package:yu/mainHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yuvaan',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeMain(index: 1),
    );
  }
}
