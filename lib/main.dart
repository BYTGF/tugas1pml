import 'package:flutter/material.dart';
import 'package:tugas1billy/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIECAT.KOM',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(
      //       fontFamily: 'Schyler',
      //       color: Colors.white // Set your custom font family here
      //     ),
      //     // You can specify other text styles as needed
      //   ),
      // ),
      home: HomePage()
    );
  }
}