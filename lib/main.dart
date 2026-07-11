import 'package:flutter/material.dart';

void main() {
  runApp(const ScienceApp());
}

class ScienceApp extends StatelessWidget {
  const ScienceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Science Spark",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("🔬 Science Spark"),
        ),
        body: const Center(
          child: Text(
            "Did you know?\n\nThe sky looks blue because Earth's atmosphere scatters blue light more than other colors.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}