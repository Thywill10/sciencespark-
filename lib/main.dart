import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ScienceSpark());
}

class ScienceSpark extends StatelessWidget {
  const ScienceSpark({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScienceSpark',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}