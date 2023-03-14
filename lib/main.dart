import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TucuApp());
}

class TucuApp extends StatelessWidget {
  const TucuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
