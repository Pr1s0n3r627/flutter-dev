import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centered Image',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(
            'assets/iconic.png', // Replace with your image file path
            width: 300, // Adjust width as needed
            height: 300, // Adjust height as needed
            fit: BoxFit.cover, // Adjust the fit as needed
          ),
        ),
      ),
    );
  }
}
