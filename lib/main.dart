import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/authorise/front/authorise_page.dart';
import 'package:flutter_komfortapp/authorise/back/isLoggedIn.dart';
import 'package:flutter_komfortapp/authorise/front/recovery_page1.dart';
import 'package:flutter_komfortapp/homeScreen.dart';
import 'package:flutter_komfortapp/BottomNavBar/bottom_nav_bar.dart';
import 'package:flutter_komfortapp/HomeScreen/Reklama/reklama_back.dart';
import 'package:flutter_komfortapp/AuthoriseScreen/front/authorise_page.dart';
import 'package:flutter_komfortapp/AuthoriseScreen/back/isLoggedIn.dart';
import 'package:flutter_komfortapp/statusBack.dart';

void main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: //authorisePage(),
            FutureBuilder<bool>( 
                future: getBoolValuesSF(),
<<<<<<< Updated upstream
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.data != null) {
                    return HomeScreen();
=======
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot){
                  var status = await statusRepo.getInfo();
                  if (snapshot.data == true&) {
                    return BottomNavBar();
>>>>>>> Stashed changes
                  } else {
                    return authorisePage();
                  }
                }));
  }
}
