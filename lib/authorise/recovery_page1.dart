import 'package:flutter/material.dart';

class recoveryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Builder(
        builder: (BuildContext context) {
          return IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios));
        },
      )),
    );
  }
}
