import 'package:flutter/material.dart';
import '../data/science_facts.dart';
import '../services/favorites_service.dart';

class FactsScreen extends StatefulWidget {
  const FactsScreen({super.key});

  @override
  State<FactsScreen> createState() => _FactsScreenState();
}

class _FactsScreenState extends State<FactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Science Facts"),
      ),
      body: ListView.builder(
        itemCount: scienceFacts.length,
        itemBuilder: (context, index) {
          final fact = scienceFacts[index];

          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 4,
            child: List