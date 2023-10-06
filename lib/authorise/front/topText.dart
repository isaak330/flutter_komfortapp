import 'package:flutter/material.dart';

Widget topText() {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 9, 0, 9),
    child: Column(children: [
      Text(
        'Добро пожаловать!',
        style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 24, letterSpacing: -1),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        'Войдите, чтобы получить доступ к различным',
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        'функциям и сервисам вашего домашнего',
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey),
      ),
      SizedBox(
        height: 5,
      ),
      Text('интернета',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.grey,
          ))
    ]),
  );
}
