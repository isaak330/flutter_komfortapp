import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/appBar.dart';
import 'package:flutter_komfortapp/history.dart';
import 'package:flutter_komfortapp/navBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: appBar(),
      bottomNavigationBar: navBar(),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            historyWidget(),
            historyWidget(),
            historyWidget(),
            historyWidget(),
            historyWidget(),
            historyWidget(),
            historyWidget(),
            historyWidget(),
            historyWidget(),
          ])),
    ));
  }
}
