import 'package:flutter/material.dart';

Widget historyWidget() {
  return Container(
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(10),
    alignment: Alignment.bottomLeft,
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: Color.fromARGB(255, 184, 53, 90)),
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage('assets/rupor.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Text(
      'Плати',
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
