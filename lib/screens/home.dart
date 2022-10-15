import 'package:flutter/material.dart';
import 'package:quotesletter/components/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: Appbar(
          appbarTitle: "QuotesLetter",
        ),
      ),
    );
  }
}
