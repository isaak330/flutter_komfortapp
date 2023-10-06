import 'package:flutter/material.dart';

Widget payButton() {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 72,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Устанавливаем форму круга
            color: Color.fromARGB(255, 0, 133, 255), // Цвет круга
          ),
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Отложенный платеж',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Text(
              'Всегда на связи!',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 93, 95, 97)),
            )
          ],
        )
      ]),
    ),
  );
}
