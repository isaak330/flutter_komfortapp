import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/main.dart';
import 'package:flutter_komfortapp/repos.dart/authoriseRepo.dart';

class authorisePage extends StatelessWidget {
  TextEditingController _login = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10, 200, 10, 0),
          children: [
            Container(
              child: Image(image: AssetImage('assets/logo1.png')),
            ),
            TextFormField(
              controller: _login,
              decoration: InputDecoration(
                  labelText: 'Логин',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(108, 0, 0, 0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(108, 0, 0, 0)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _password,
              decoration: InputDecoration(
                  labelText: 'Пароль',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(108, 0, 0, 0))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(108, 0, 0, 0)))),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                _login.text;
                bool authIsSuccess =
                    await authoriseRepo.getInfo(_login.text, _password.text);
                if (authIsSuccess) {
                  Route route =
                      MaterialPageRoute(builder: (context) => MyApp());
                  Navigator.push(context, route);
                } else {
                  // setState(() {
                  //   isError = true;
                  // });
                }
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  fixedSize: Size(50, 55),
                  backgroundColor: Color.fromARGB(255, 0, 0, 0)),
              child: Text(
                'Войти',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Не помню логин или пароль',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
