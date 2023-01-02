import 'package:flutter/material.dart';

void main() {
  runApp(const HasCreativeApp());
}

class HasCreativeApp extends StatelessWidget {
  const HasCreativeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Has Creative',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
