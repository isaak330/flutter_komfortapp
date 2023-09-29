import 'package:flutter/material.dart';

class recoveryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Восстановление доступа'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios));
            },
          )),
      body: Form(
          child: Column(
        children: [
          Text(
            'Укажите номер договора',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          Text('Введите номер договора, который вы указали при регистрации'),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Пароль',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: const Color.fromARGB(108, 0, 0, 0))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(108, 0, 0, 0)))),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                fixedSize: Size(80, 25),
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
            child: Text(
              'Дальше',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
