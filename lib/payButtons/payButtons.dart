import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/payButtons/payButton1.dart';
import 'package:flutter_komfortapp/payButtons/payButton2.dart';
import 'package:flutter_komfortapp/payButtons/payButton3.dart';

Widget payButtons() {
  return Container(
    //margin: EdgeInsets.all(50),
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [payButton1(), Spacer(), payButton2(), Spacer(), payButton3()],
    ),
  );
}
