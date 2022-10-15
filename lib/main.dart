import 'package:flutter/material.dart';

void main() {
  runApp(const QuotesLetter());
}

class QuotesLetter extends StatelessWidget {
  const QuotesLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold()),
    );
  }
}
