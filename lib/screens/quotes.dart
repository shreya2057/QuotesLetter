import 'package:flutter/material.dart';
import 'package:quotesletter/components/appbar.dart';
import 'package:quotesletter/components/quotes_card.dart';

class Quotes extends StatelessWidget {
  const Quotes({required this.quotes, required this.author, super.key});
  final String quotes;
  final String author;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Appbar(appbarTitle: author),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: QuotesCard(
                author: author,
                quotes: quotes,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Back"))),
            )
          ],
        ),
      ),
    );
  }
}
