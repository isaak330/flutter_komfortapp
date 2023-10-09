import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/infoBar/back/getInfoBarData.dart';

AppBar appBar(String uid, String userName) {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 242, 243, 245),
    elevation: 0,
    title: Column(
      children: [
        Text(
          uid,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.2,
              fontSize: 16),
        ),
        Text(
          userName,
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

// class MyBtn extends StatelessWidget {
//   final Function()? onPressed;
//   final Widget icon;
//   const MyBtn({super.key, this.onPressed, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 40,
//         height: 40,
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle, // Устанавливаем форму круга
//           color: Color.fromARGB(255, 255, 255, 255), // Цвет круга
//         ),
//       child: IconButton(onPressed: onPressed, icon: icon),
//     );
//   }
// }
