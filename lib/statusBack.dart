import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_komfortapp/AuthoriseScreen/back/saveID.dart';

class statusRepo {
  static Future<bool> getInfo() async {
    var id = getStringID();
    var response;
    var status;
    try {
      response = await Dio().get(
          'https://admin.azinet.ru:7443/api/contract?contract_id=$id');
      if (response.statusCode == 200) {
        status = response.data['result']['state'];
      }
    } catch (e) {
      debugPrint('auth.repo: $e');
    }
    return status;
  }
}
