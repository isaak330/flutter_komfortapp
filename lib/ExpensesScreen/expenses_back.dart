import 'package:dio/dio.dart';
import 'package:flutter_komfortapp/AuthoriseScreen/back/saveID.dart';

class ExpensesRepo {
  static Future<List<Expense>> getExpenses() async {
    var id = await getStringID();
    List<Expense> sumResponse = [];

    var responseMinus = await Dio()
        .get('https://admin.azinet.ru:7443/api/contract/fees?no_d=$id');

    for (var element in responseMinus.data["result"]) {
      sumResponse.add(Expense.fromJson(element));
    }
    var responsePlus = await Dio().get(
        'https://admin.azinet.ru:7443/api/contract/pays?contract_id=$id&dfrom=20230901&dto=20230931');

    for (var element in responsePlus.data["result"]) {
      sumResponse.add(Expense.fromJson(element));
    }

    sumResponse.sort((a, b) => b.time.compareTo(a.time));
    return sumResponse;
  }
}

class Expense {
  late DateTime time;
  late String dsc;
  late int sum;
  Expense(this.time, this.dsc, this.sum);
  Expense.fromJson(json) {
    time = DateTime.parse(json["date"]);
    dsc = json["dsc"];
    sum = json["sum"];
  }
}

class ExpenseDateRepo {
  static Future<List<ExpenseDate>> getExpDate() async {
    var id = await getStringID();
    List<ExpenseDate> sumResponse = [];

    var responseMinus = await Dio()
        .get('https://admin.azinet.ru:7443/api/contract/fees?no_d=$id');

    for (var element in responseMinus.data["result"]['date']) {
      sumResponse.add(ExpenseDate.fromJson(element));
    }
    var responsePlus = await Dio().get(
        'https://admin.azinet.ru:7443/api/contract/pays?contract_id=$id&dfrom=20230901&dto=20230931');
    for (var element in responsePlus.data["result"]['date']) {
      sumResponse.add(ExpenseDate.fromJson(element));
    }
    sumResponse.sort((a, b) => b.time.compareTo(a.time));
    return sumResponse;
  }
}

class ExpenseDate {
  late DateTime time;
  ExpenseDate(this.time);
  ExpenseDate.fromJson(json) {
    time = DateTime.parse('date');
  }
}
