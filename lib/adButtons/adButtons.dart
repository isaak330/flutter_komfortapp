import 'package:flutter/material.dart';

class HistoriesWidget extends StatelessWidget {
  const HistoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            //открываем страницу с историей
            //вообще обработку нажатия можно сделать и в самом виджете HistoryWidget и возвращать метод, что является менее читаемым (как по мне)
          },
          child: const HistoryWidget(imageUrl: "", label: "абоба"),
        );
      },
    );
  }
}

class HistoryWidget extends StatelessWidget {
  final String imageUrl;
  final String label;
  const HistoryWidget({super.key, required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134, //размер
      width: 303, //размер
      margin: const EdgeInsets.all(
          8), //отступы со всех сторон, чтобы не стояли вплотную
      alignment: Alignment.bottomCenter, //выравнивание детей по центру снизу
      //оформление контейнера
      decoration: BoxDecoration(
          //грузим картинку из инета, а она скорее всего будет из инета по ссылке из бд
          image: DecorationImage(image: NetworkImage(imageUrl)),
          borderRadius:
              BorderRadiusDirectional.circular(12), //устанавливаем радиус
          //делаем границы, как в дизигне (что помню)
          border: Border.all(color: Colors.red, width: 1.5)),
      child: Text(label, style: const TextStyle(fontSize: 14)),
    );
  }
}
