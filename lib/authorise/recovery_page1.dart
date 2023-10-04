import 'package:flutter/material.dart';

class recoveryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Container(
        padding: EdgeInsets.fromLTRB(16, 110, 16, 16),
        child: Column(children: [
          Text(
            'Восстановление доступа',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 24, letterSpacing: -1),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Введите данные, которые вы указывали при ',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF5D5F61)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'заключении договора. Мы автомически',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF5D5F61)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'подставим логин и пароль в соответствующие поля',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF5D5F61)),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
              height: 54,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Номер договора',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: const Color(0xFFE1E3E6))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Color(0xFF0085FF)))),
              )),
          SizedBox(
            height: 16,
          ),
          Container(
              height: 54,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Номер договора',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: const Color(0xFFE1E3E6))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Color(0xFF0085FF)))),
              )),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(600, 54),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                fixedSize: Size(50, 55),
                backgroundColor: Color(0xFF0085FF)),
            child: Text(
              'Восттановить доступ',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          )
        ]),
      )),
    );
  }
}
