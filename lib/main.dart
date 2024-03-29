import 'package:flutter/material.dart';
import 'package:uguesas/src/homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uguesas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uguesas'),
        ),
        body: HomePage(),
      ),
    );
  }
}