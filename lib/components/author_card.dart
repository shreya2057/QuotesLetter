import 'package:flutter/material.dart';

class Authors extends StatefulWidget {
  const Authors(
      {Key? key,
      required this.index,
      required this.authorName,
      required this.quote})
      : super(key: key);

  final int index;
  final String authorName;
  final String quote;

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Card(
        color: const Color.fromARGB(255, 241, 239, 239),
        elevation: 2,
        child: InkWell(
          onTap: () {
            print("Hi");
          },
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
                Text(widget.authorName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
