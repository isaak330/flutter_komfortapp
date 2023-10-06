import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/appBar.dart';
import 'package:flutter_komfortapp/history.dart';
import 'package:flutter_komfortapp/infoBar/front/informationBar.dart';
import 'package:flutter_komfortapp/payButton.dart';
import 'package:flutter_komfortapp/payButtons/payButtons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        // bottomNavigationBar: navBar(),
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        body: SingleChildScrollView(
          child: Column(
            children: [informationBar(), payButton()],
          ),
        ),
      ),
    );
  }
}
