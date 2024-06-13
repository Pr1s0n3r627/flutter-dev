import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centered Image',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(
            'assets/iconic.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
