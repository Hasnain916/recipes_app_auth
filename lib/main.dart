import 'package:flutter/material.dart';
import 'package:recipes_app/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication Screens',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:const Welcome(),
    );
  }
}