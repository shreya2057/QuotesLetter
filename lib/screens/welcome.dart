import 'dart:async';
import 'package:flutter/material.dart';
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
    displayHomeScreen(second: 1);
  }

  displayHomeScreen({required int second}) {
    Timer(Duration(seconds: second), () {
      if (author.isNotEmpty) {
        navigateAfterData();
      } else {
        second++;
        displayHomeScreen(second: second);
      }
    });
  }

  navigateAfterData() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  dynamic getData() async {
    var url = Uri.https("dummyjson.com", "/quotes", {"q": "{https}"});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      for (var i = 0; i < 30; i++) {
        author.add(data["quotes"][i]["author"]);
        quote.add(data["quotes"][i]["quote"]);
      }
    } else {
      print("Error status code ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    String content = "QuotesLetter";
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.newspaper,
          size: 100,
          color: Colors.indigo,
          shadows: [
            Shadow(
                color: Color.fromARGB(77, 70, 70, 70),
                offset: Offset(3, 3),
                blurRadius: 1)
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          content,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent),
        ),
        const SizedBox(
          height: 20,
        ),
        const CircularProgressIndicator(
          color: Colors.pinkAccent,
          strokeWidth: 5,
        )
      ],
    ))));
  }
}
