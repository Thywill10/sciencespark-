import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, Object>> questions = [
    {
      "question": "What is the largest planet?",
      "answers": ["Earth", "Mars", "Jupiter", "Venus"],
      "correct": "Jupiter",
    },
    {
      "question": "What gas do plants absorb?",
      "answers": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
      "correct": "Carbon Dioxide",
    },
    {
      "question": "How many bones are in an adult human body?",
      "answers": ["206", "300", "150", "100"],
      "correct": "206",
    },
    {
      "question": "Which planet is known as the Red Planet?",
      "answers": ["Mars", "Saturn", "Mercury", "Neptune"],
      "correct": "Mars",
    },
    {
      "question": "What is H₂O?",
      "answers": ["Salt", "Water", "Hydrogen", "Oxygen"],
      "correct": "Water",
    },
  ];

  int currentQuestion = 0;
  int score = 0;

  void answerQuestion(String answer) {
    if (answer == questions[currentQuestion]["correct"]) {
      score++;
    }

    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Quiz Finished"),
          content: Text(
            "Your Score: $score / ${questions.length}",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestion = 0;
                  score = 0;
                });
              },
              child: const Text("Restart"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Science Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              question["question"] as String,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ...(question["answers"] as List<String>).map(
              (answer) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => answerQuestion(answer),
                    child: Text(answer),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}