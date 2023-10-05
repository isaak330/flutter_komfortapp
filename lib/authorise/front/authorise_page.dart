import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/authorise/back/isLoggedIn.dart';
import 'package:flutter_komfortapp/authorise/front/recovery_page1.dart';
import 'package:flutter_komfortapp/authorise/back/authoriseRepo.dart';
import 'package:flutter_komfortapp/authorise/front/topText.dart';
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
              topText(),
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
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => recoveryPage1());
                    Navigator.push(context, route);
                  },
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
