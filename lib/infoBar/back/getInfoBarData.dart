import 'package:dio/dio.dart';
import 'package:flutter_komfortapp/infoBar/back/saveID.dart';
import 'package:flutter_komfortapp/komfortModel.dart';

class HomePageRepo {
  static Future getInfoBarData() async {
    Future<String> id = getStringID();
    var response = await Dio()
        .get('https://admin.azinet.ru:7443/api/contract?contract_id=$id');
    print(response);
    // String idCl = response.data['no_d'];
    // String nameCl = response.data['client_name'];
    // final appBarList = [idCl, nameCl];
    // return appBarList;
  }
}
