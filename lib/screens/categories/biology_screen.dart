import 'package:flutter/material.dart';

class BiologyScreen extends StatelessWidget {
  const BiologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final biologyFacts = [
      "The human body has 206 bones.",
      "The heart pumps blood throughout the body.",
      "DNA carries genetic information.",
      "Plants make food through photosynthesis.",
      "The brain controls the body's activities.",
      "Red blood cells carry oxygen.",
      "The skin is the largest organ in the human body.",
      "The lungs help us breathe.",
      "The stomach helps digest food.",
      "Every living thing is made of cells.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Biology"),
      ),
      body: ListView.builder(
        itemCount: biologyFacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.biotech,
                color: Colors.green,
              ),
              title: Text(biologyFacts[index]),
            ),
          );
        },
      ),
    );
  }
}