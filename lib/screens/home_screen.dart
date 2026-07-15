import 'package:flutter/material.dart';
import 'dart:math';

import '../data/daily_facts.dart';
import '../widgets/banner_ad_widget.dart';

import 'categories_screen.dart';
import 'quiz_screen.dart';
import 'search_screen.dart';
import 'favorites_screen.dart';
import 'settings_screen.dart';

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
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 400),
              pageBuilder: (context, animation, secondaryAnimation) => page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 55, color: color),
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
    final randomFact = dailyFacts[Random().nextInt(dailyFacts.length)];

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "ScienceSpark",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("👋", style: TextStyle(fontSize: 28)),
                SizedBox(width: 8),
                Text(
                  "Welcome to ScienceSpark",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Text(
              "Explore • Learn • Discover",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Discover amazing science facts,\nchallenge yourself with quizzes,\nand learn something new every day.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              color: Colors.amber.shade100,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.lightbulb, color: Colors.orange),
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

                    const SizedBox(height: 12),

                    Text(
                      randomFact,
                      style: const TextStyle(fontSize: 16),
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

            const BannerAdWidget(),

            const SizedBox(height: 8),

            const Text(
              "ScienceSpark v1.0",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}