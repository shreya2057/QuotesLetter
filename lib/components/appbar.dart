import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56);

  const Appbar({Key? key, required this.appbarTitle}) : super(key: key);

  final String appbarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appbarTitle),
      leading: const Icon(
        Icons.newspaper_outlined,
        size: 20,
        color: Colors.white,
      ),
      backgroundColor: Colors.indigo,
    );
  }
}
