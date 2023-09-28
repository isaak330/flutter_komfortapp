import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(
        255, 248, 248, 248), //Color.fromARGB(255, 240, 240, 240),
    elevation: 0,
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ))
    ],
  );
}
