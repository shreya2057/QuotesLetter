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
              // return Text(authorName(1).toString());
              return Text("hi");
            }),
      ),
    );
  }
}
