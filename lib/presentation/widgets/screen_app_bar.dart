
import 'package:flutter/material.dart';

AppBar screenAppBar({required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0.0,
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        );
      })
    ],
  );
}
