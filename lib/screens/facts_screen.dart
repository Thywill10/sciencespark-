import 'package:flutter/material.dart';

class FactsScreen extends StatelessWidget {
  const FactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final facts = [
      "The Sun is a star.",
      "Water boils at 100°C.",
      "The Earth revolves around the Sun.",
      "Plants make food through photosynthesis.",
      "Light travels faster than sound.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Science Facts"),
      ),
      body: ListView.builder(
        itemCount: facts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.science),
              title: Text(facts[index]),
            ),
          );
        },
      ),
    );
  }
}