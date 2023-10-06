import 'package:flutter/material.dart';

Widget informationBar() {
  return Container(
    height: 132,
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.white),
    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Договор Активен',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              Align(
                child: Text(
                  '330.00₽',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
              )
            ],
          ),
          SizedBox(
            width: 125,
          ),
          Container(
            // margin: EdgeInsets.all(5),
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(122, 40)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 0, 140, 255)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                child: Text(
                  'Пополнить',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
      SizedBox(
        height: 12,
      ),
      Container(
        width: 1100,
        //height: 1000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ежемесячный платеж',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            Text(
              '884₽',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            )
          ],
        ),
      )
    ]),
  );
}
