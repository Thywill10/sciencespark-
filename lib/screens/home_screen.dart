import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'quiz_screen.dart';
import 'search_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildCard(
    BuildContext context,
    IconData icon,
    Color color,
    String title,
    Widget page,
  ) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 55,
              color: color,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "ScienceSpark",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          children: [

            const SizedBox(height: 10),

            const Text(
              "Explore • Learn • Discover",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Your simple science learning companion",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              color: Colors.amber.shade100,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Icon(Icons.lightbulb,
                            color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Daily Science Fact",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),

                    Text(
                      "Did you know? Honey never spoils. Archaeologists have discovered edible honey in ancient Egyptian tombs.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,

                children: [

                  buildCard(
                    context,
                    Icons.science,
                    Colors.blue,
                    "Categories",
                    const CategoriesScreen(),
                  ),

                  buildCard(
                    context,
                    Icons.quiz,
                    Colors.green,
                    "Quiz",
                    const QuizScreen(),
                  ),

                  buildCard(
                    context,
                    Icons.search,
                    Colors.orange,
                    "Search",
                    const SearchScreen(),
                  ),

                  buildCard(
                    context,
                    Icons.favorite,
                    Colors.red,
                    "Favorites",
                    const FavoritesScreen(),
                  ),
                ],
              ),
            ),

            const Text(
              "ScienceSpark v1.0",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}