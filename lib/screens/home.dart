import 'package:flutter/material.dart';
import 'package:quotesletter/components/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> author = [];
  List<String> quote = [];

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
              );
            }),
      ),
    );
  }
}

class Authors extends StatefulWidget {
  const Authors({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<Authors> createState() => _AuthorsState();
}

class _AuthorsState extends State<Authors> {
  List<Color> colors = [
    const Color.fromARGB(255, 237, 72, 127),
    const Color.fromARGB(255, 185, 72, 237),
    const Color.fromARGB(255, 125, 253, 96),
    const Color.fromARGB(255, 94, 161, 238)
  ];

  int pickColor(int index) {
    if (index < colors.length) {
      int color = index;
      return color;
    } else {
      int color = index % colors.length;
      return color;
    }
  }

  @override
  Widget build(BuildContext context) {
    String author = "Shreya";
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Card(
        color: const Color.fromARGB(255, 241, 239, 239),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.account_circle,
                size: 45,
                color: colors[pickColor(widget.index)],
              ),
              const SizedBox(
                width: 5,
              ),
              Text(author),
            ],
          ),
        ),
      ),
    );
  }
}
