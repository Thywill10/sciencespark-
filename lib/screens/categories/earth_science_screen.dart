import 'package:flutter/material.dart';

class EarthScienceScreen extends StatelessWidget {
  const EarthScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final earthFacts = [
      "The Earth has four main layers: crust, mantle, outer core, and inner core.",
      "About 71% of the Earth's surface is covered by water.",
      "Volcanoes release molten rock called lava.",
      "Earthquakes occur due to movement of tectonic plates.",
      "The atmosphere protects Earth from harmful radiation.",
      "Mount Everest is the highest mountain above sea level.",
      "The water cycle includes evaporation, condensation, and precipitation.",
      "Rocks are classified as igneous, sedimentary, or metamorphic.",
      "The Earth rotates once every 24 hours.",
      "The Earth revolves around the Sun in about 365 days.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Earth Science"),
      ),
      body: ListView.builder(
        itemCount: earthFacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.public,
                color: Colors.brown,
              ),
              title: Text(earthFacts[index]),
            ),
          );
        },
      ),
    );
  }
}