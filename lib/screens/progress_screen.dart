import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Progress"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Icon(
              Icons.bar_chart,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            const Text(
              "Your Learning Progress",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            LinearProgressIndicator(
              value: 0.0,
              minHeight: 12,
              borderRadius: BorderRadius.circular(10),
            ),

            const SizedBox(height: 15),

            const Text(
              "0% Completed",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 40),

            const Card(
              child: ListTile(
                leading: Icon(Icons.emoji_events, color: Colors.amber),
                title: Text("Achievements"),
                subtitle: Text("Complete quizzes to unlock badges."),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.school, color: Colors.green),
                title: Text("Lessons Completed"),
                subtitle: Text("0 Lessons Completed"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}