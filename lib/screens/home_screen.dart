import 'dart:math';

import 'package:flutter/material.dart';

import '../core/quotes.dart';
import '../models/quotes_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Random random = Random();

  late QuotesModel currentQuote;

  @override
  void initState() {
    super.initState();
    showRandomQuote();
  }

  void showRandomQuote() {
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Quote Generator')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuote.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Text(
                "- ${currentQuote.author}",
                style: const TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: showRandomQuote,
                child: Text('New Quote'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
