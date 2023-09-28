import 'package:flutter/material.dart';

Widget payButton3() {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          fixedSize: Size(130, 110),
          backgroundColor: Color.fromARGB(255, 255, 255, 255)),
      onPressed: () {},
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 5, 70, 15),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Устанавливаем форму круга
                color: Color.fromARGB(255, 223, 97, 0), // Цвет круга
              ),
              child: Icon(
                Icons.alarm,
                size: 17,
                color: Colors.white,
              )),
          Text(
            textAlign: TextAlign.left,
            'Отложенный        '
            'платеж',
            softWrap: true,
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ));
}
