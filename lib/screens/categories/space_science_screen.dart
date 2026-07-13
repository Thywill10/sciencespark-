import 'package:flutter/material.dart';

class SpaceScienceScreen extends StatelessWidget {
  const SpaceScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spaceFacts = [
      "The Sun is a star.",
      "The Earth is the third planet from the Sun.",
      "The Moon is Earth's natural satellite.",
      "Jupiter is the largest planet in our Solar System.",
      "Light from the Sun takes about 8 minutes to reach Earth.",
      "There are eight planets in our Solar System.",
      "Astronauts experience weightlessness in space.",
      "A galaxy is a huge collection of stars.",
      "The Milky Way is the galaxy that contains our Solar System.",
      "A black hole has gravity so strong that even light cannot escape.",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Space Science"),
      ),
      body: ListView.builder(
        itemCount: spaceFacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.travel_explore,
                color: Colors.purple,
              ),
              title: Text(spaceFacts[index]),
            ),
          );
        },
      ),
    );
  }
}