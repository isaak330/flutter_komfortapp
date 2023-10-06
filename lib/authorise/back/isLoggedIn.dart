import 'package:shared_preferences/shared_preferences.dart';

addBoolToSF(bool St) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('boolValue', St);
}

Future<bool> getBoolValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? boolValue = prefs.getBool('boolValue');
  return boolValue!;
}
