import 'package:flutter/material.dart';
import 'package:hediaty/screens/home.dart';
import 'package:hediaty/widgets/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),// Use HomePage widget here (without 'const' if there are no constant expressions)
    );
  }
}
