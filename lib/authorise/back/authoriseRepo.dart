import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class authoriseRepo {
  static Future<bool> getInfo(String login, String passwords) async {
    var response = await Dio().get(
        'https://admin.azinet.ru:7443/api/contract/check_credentials?login=$login&password=$passwords');
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}

class idIdent {}
