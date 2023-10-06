import 'package:flutter/material.dart';

Widget informationBar() {
  return Container(
    height: 136,
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.white),
    child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Договор Активен',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '330.00₽',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                width: 125,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 0, 132, 255),
                  ),
                  padding: EdgeInsets.all(10),
                  width: 122,
                  height: 40,
                  child: Text(
                    'Пополнить',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ежемесячный платеж',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '884.00₽',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                )
              ],
            ),
          )
        ]),
  );
}
