import 'package:flutter/material.dart';
import 'package:quotesletter/screens/home.dart';

void main() {
  runApp(const QuotesLetter());
}

class QuotesLetter extends StatelessWidget {
  const QuotesLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
