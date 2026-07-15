import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About ScienceSpark"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 20),

            Icon(
              Icons.science,
              size: 90,
              color: Colors.blue,
            ),

            SizedBox(height: 20),

            Text(
              "ScienceSpark",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Version 1.0",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 25),

            Text(
              "ScienceSpark is a simple science learning application designed to help students and science lovers understand Biology, Physics, Chemistry, Earth Science and Space Science in an easy and enjoyable way.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),

            SizedBox(height: 30),

            Text(
              "Developed by Thywill",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}