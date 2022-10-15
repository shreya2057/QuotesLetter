import 'package:flutter/material.dart';
import 'package:quotesletter/components/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:quotesletter/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<String> author = [];
  List<String> quote = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  dynamic getData() async {
    var url = Uri.https("dummyjson.com", "/quotes", {"q": "{https}"});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      for (var i = 0; i < 30; i++) {
        author.add(data["quotes"][i]["author"]);
        // quoteText.add(data["quotes"][i]["quote"]);
      }
    } else {
      print("Error status code ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text("Loading");
  }
}
