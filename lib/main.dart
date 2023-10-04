import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/authorise/authorise_page.dart';
import 'package:flutter_komfortapp/authorise/isLoggedIn.dart';
import 'package:flutter_komfortapp/authorise/recovery_page1.dart';
import 'package:flutter_komfortapp/homeScreen.dart';

void main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: // authorisePage(),
            FutureBuilder<bool>(
                future: getBoolValuesSF(),
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.data == true) {
                    return HomeScreen();
                  } else {
                    return authorisePage();
                  }
                }));
  }
}
