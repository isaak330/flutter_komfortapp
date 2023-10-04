import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/authorise/isLoggedIn.dart';
//import 'package:flutter_komfortapp/main.dart';
import 'package:flutter_komfortapp/repos.dart/authoriseRepo.dart';
import 'package:flutter_komfortapp/homeScreen.dart';

class authorisePage extends StatefulWidget {
  @override
  _authorisePage createState() => _authorisePage();
}

class _authorisePage extends State<authorisePage> {
  TextEditingController _login = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _hidePass = true;
  //bool isAuth = addBoolToSF(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 110, 16, 16),
          child: Column(
            //padding: EdgeInsets.fromLTRB(10, 200, 10, 0),
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: Column(children: [
                  Text(
                    'Добро пожаловать!',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        letterSpacing: -1),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Войдите, чтобы получить доступ к различным',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF5D5F61)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'функциям и сервисам вашего домашнего',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF5D5F61)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('интернета',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey,
                      ))
                ]),
              ),
              SizedBox(height: 24),
              Container(
                height: 54,
                child: TextFormField(
                  controller: _login,
                  decoration: InputDecoration(
                      labelText: 'Логин',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide:
                              BorderSide(color: const Color(0xFFE1E3E6))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xFF0085FF)))),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 54,
                child: TextFormField(
                  obscureText: _hidePass,
                  controller: _password,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(_hidePass
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _hidePass = !_hidePass;
                          });
                        },
                      ),
                      labelText: 'Пароль',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide:
                              BorderSide(color: const Color(0xFFE1E3E6))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xFF0085FF)))),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () async {
                    _login.text;
                    bool authIsSuccess = await authoriseRepo.getInfo(
                        _login.text, _password.text);
                    if (authIsSuccess) {
                      await addBoolToSF(true);
                      setState(() {});
                      Route route =
                          MaterialPageRoute(builder: (context) => HomeScreen());
                      Navigator.pushAndRemoveUntil(
                          context, route, (route) => false);
                    } else {
                      // setState(() {
                      //   isError = true;
                      // });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(600, 54),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      fixedSize: Size(50, 55),
                      backgroundColor: Color(0xFF0085FF)),
                  child: Text(
                    'Войти',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Не помню логин или пароль',
                    style: TextStyle(
                        color: Color(0xFF0085FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
