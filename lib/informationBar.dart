import 'package:flutter/material.dart';

Widget informationBar() {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Баланс',
          style: TextStyle(fontSize: 13, color: Colors.grey),
          textAlign: TextAlign.left,
        ),
      ),
      Align(
          alignment: Alignment.topLeft,
          child: Text(
            '330.00 ₽',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
      Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 85, 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Ежемесячный платеж',
                  style: TextStyle(fontSize: 13, color: Colors.grey)),
              SizedBox(height: 5),
              Text('884 ₽', style: TextStyle(fontSize: 15)),
            ]),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Следующее списание',
                  style: TextStyle(fontSize: 13, color: Colors.grey)),
              SizedBox(height: 5),
              Text(
                '12 Сентября',
                style: TextStyle(fontSize: 15),
              )
            ]),
          )
        ],
      ),
      Row(
        children: [
          Expanded(
              flex: 3,
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 203, 27, 86))),
                  onPressed: () {},
                  child: Text(
                    'Пополнить на 554 ₽',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ))),
          Container(
            margin: EdgeInsets.all(5),
            height: 40,
            // padding: ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(43, 203, 27, 86)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.data_usage),
                color: Color.fromARGB(255, 203, 27, 86)),
          )
        ],
      )
    ]),
  );
}
