import 'package:flutter/material.dart';

BottomNavigationBar navBar() {
  return BottomNavigationBar(
      backgroundColor: Colors.green,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'der'),
        BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Услуги'),
        BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Поддержка'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Еще')
      ]);
}
