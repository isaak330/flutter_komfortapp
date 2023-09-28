import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/appBar.dart';
import 'package:flutter_komfortapp/history.dart';
import 'package:flutter_komfortapp/informationBar.dart';
//import 'package:flutter_komfortapp/navBar.dart';
import 'package:flutter_komfortapp/payButtons/payButtons.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: appBar(),
      // bottomNavigationBar: navBar(),
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                historyWidget(),
                historyWidget(),
                historyWidget(),
                historyWidget(),
                historyWidget(),
                historyWidget(),
                historyWidget(),
              ])),
          informationBar(),
          payButtons(),
        ],
      ),
    ));
  }
}
