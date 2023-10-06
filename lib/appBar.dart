import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 242, 243, 245),
    elevation: 0,
    title: Column(
      children: [
        Text(
          '№123456789',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.2,
              fontSize: 16),
        ),
        Text(
          'Иванов Иван Иванович',
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.3,
              fontSize: 12),
        ),
      ],
    ),
    leading: Builder(builder: (BuildContext context) {
      return Container(
        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Устанавливаем форму круга
          color: Color.fromARGB(255, 255, 255, 255), // Цвет круга
        ),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.black,
            )),
      );
    }),
    actions: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Устанавливаем форму круга
          color: Color.fromARGB(255, 255, 255, 255), // Цвет круга
        ),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
              color: Colors.black,
            )),
      )
    ],
  );
}
