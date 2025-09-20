import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  final List<Map<String, String>> quotes = const [
    {
      "quote": "The best way to predict the future is to create it.",
      "author": "Abraham Lincoln"
    },
    {
      "quote": "Success is not final, failure is not fatal: it is the courage to continue that counts.",
      "author": "Winston Churchill"
    },
    {
      "quote": "Do what you can, with what you have, where you are.",
      "author": "Theodore Roosevelt"
    },
    {
      "quote": "Happiness depends upon ourselves.",
      "author": "Aristotle"
    },
    {
      "quote": "In the middle of every difficulty lies opportunity.",
      "author": "Albert Einstein"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("✨ Quotes App"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.format_quote,
                      color: Colors.deepPurple, size: 30),
                  const SizedBox(height: 8),
                  Text(
                    quote["quote"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "- ${quote["author"]}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
