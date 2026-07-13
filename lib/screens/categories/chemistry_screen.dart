import 'package:flutter/material.dart';

class ChemistryScreen extends StatelessWidget {
  const ChemistryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chemistryFacts = [
      "Water is made of hydrogen and oxygen.",
      "The chemical symbol for gold is Au.",
      "Acids have a pH less than 7.",
      "Bases have a pH greater than 7.",
      "Atoms are the smallest units of matter.",
      "Oxygen supports combustion.",
      "Carbon is the basis of organic life.",
      "Rust forms when iron reacts with oxygen and water.",
      "Salt is made of sodium and chlorine.",
      "Chemical reactions produce new substances.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chemistry"),
      ),
      body: ListView.builder(
        itemCount: chemistryFacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.local_fire_department,
                color: Colors.orange,
              ),
              title: Text(chemistryFacts[index]),
            ),
          );
        },
      ),
    );
  }
}