import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/adButtons/adButtons.dart';
import 'package:flutter_komfortapp/appBar.dart';
import 'package:flutter_komfortapp/history.dart';
import 'package:flutter_komfortapp/informationBar.dart';
import 'package:flutter_komfortapp/payButtons/payButtons.dart';

class HomeScreen extends StatelessWidget {
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                informationBar(),
                payButtons(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
