import 'package:flutter/material.dart';
import 'package:quotesletter/components/appbar.dart';
import 'package:quotesletter/components/author_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.author, required this.quote, super.key});

  final List<String> author;
  final List<String> quote;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const Appbar(
          appbarTitle: "QuotesLetter",
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return Authors(
                index: index,
                authorName: widget.author[index],
                quote: widget.quote[index],
              );
            }),
      ),
    );
  }
}
