import 'package:flutter/material.dart';

class QuotesCard extends StatelessWidget {
  const QuotesCard({required this.author, required this.quotes, super.key});
  final String author;
  final String quotes;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 241, 239, 239),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              quotes,
              style: TextStyle(fontSize: 20, wordSpacing: 8),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  author,
                  style: TextStyle(fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
