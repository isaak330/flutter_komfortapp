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
          SizedBox(),
          Text('data'),
          SizedBox(),
          TextFormField(),
          SizedBox(),
          TextFormField(),
          SizedBox(),
          ElevatedButton(
            onPressed: () {},
            child: Text('asd'),
          )
        ]),
      )),
    );
  }
}
