import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/ExpensesScreen/expenses_back.dart';
import 'package:flutter_svg/svg.dart';

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Расходы',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.ios_share,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: ExpensesRepo.getExpenses(),
          builder: (context, AsyncSnapshot<List<Expense>> snapshot) {
            if (snapshot.data == null) {
              return Center(child: const CircularProgressIndicator());
            }
            return Column(
              children: snapshot.data!
                  .map((e) => PayCardWidget(
                      desc: e.dsc, pay: e.sum.toString(), time: e.time))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

class PayCardWidget extends StatelessWidget {
  final String desc;
  final String pay;
  final DateTime time;
  const PayCardWidget(
      {super.key, required this.desc, required this.pay, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        bottom:
            BorderSide(color: Color.fromARGB(255, 232, 232, 232), width: 0.5),
      )
          //borderRadius: BorderRadius.only()
          ),
      margin: EdgeInsets.all(10),
      //width: 343,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SvgPicture.asset(
              int.parse(pay) > 0
                  ? 'assets/IconRub.svg'
                  : 'assets/IconContainer.svg',
              height: 45,
              width: 45,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //$desc
                  'Тариф Оптимальный',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Списание по услуге',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 93, 95, 97)),
                )
              ],
            )
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$pay₽',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color:
                        int.parse(pay) > 0 ? Colors.green[400] : Colors.black),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '${time.hour}:${time.minute}',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
