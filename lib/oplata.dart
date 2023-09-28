import 'package:flutter/material.dart';

Widget oplata() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        margin: EdgeInsets.all(10),
        width: 124,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 187, 187, 187),
                  blurRadius: 5,
                  offset: Offset(0, 4))
            ]),
        alignment: Alignment.centerLeft,
        child: Column(children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 80, 10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Устанавливаем форму круга
                color: Color.fromARGB(255, 223, 97, 0), // Цвет круга
              ),
              child: Icon(
                Icons.percent_rounded,
                size: 17,
                color: Colors.white,
              )),
          Text(
            'Скидка            '
            'за аванс',
            textAlign: TextAlign.left,
            softWrap: true,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        margin: EdgeInsets.all(10),
        width: 124,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 187, 187, 187),
                  blurRadius: 5,
                  offset: Offset(0, 4))
            ]),
        alignment: Alignment.centerLeft,
        child: Column(children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 80, 10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Устанавливаем форму круга
                color: Color.fromARGB(255, 223, 97, 0), // Цвет круга
              ),
              child: Icon(
                Icons.percent_rounded,
                size: 17,
                color: Colors.white,
              )),
          Text(
            'Автоплатеж',
            textAlign: TextAlign.left,
            softWrap: true,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
        width: 124,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 187, 187, 187),
                  blurRadius: 5,
                  offset: Offset(0, 4))
            ]),
        alignment: Alignment.centerLeft,
        child: Column(children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 80, 10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Устанавливаем форму круга
                color: Color.fromARGB(255, 223, 97, 0), // Цвет круга
              ),
              child: Icon(
                Icons.percent_rounded,
                size: 17,
                color: Colors.white,
              )),
          Text(
            'Отложенный            '
            'платеж',
            textAlign: TextAlign.left,
            softWrap: true,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
      ),
    ],
  );
}
