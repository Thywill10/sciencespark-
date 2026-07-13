import 'package:flutter/material.dart';

class PhysicsScreen extends StatelessWidget {
  const PhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final physicsFacts = [
      "Force is a push or pull.",
      "Light travels at about 300,000 km/s.",
      "Gravity pulls objects toward the Earth.",
      "Energy cannot be created or destroyed.",
      "Sound travels slower than light.",
      "The SI unit of force is the Newton.",
      "Voltage is measured in volts.",
      "Power is measured in watts.",
      "Pressure equals force divided by area.",
      "Heat flows from a hotter object to a colder object.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Physics"),
      ),
      body: ListView.builder(
        itemCount: physicsFacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.science,
                color: Colors.blue,
              ),
              title: Text(physicsFacts[index]),
            ),
          );
        },
      ),
    );
  }
}