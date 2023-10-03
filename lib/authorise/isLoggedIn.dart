import 'package:shared_preferences/shared_preferences.dart';

addBoolToSF(bool St) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('boolValue', St);
}

getBoolValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return bool
  bool? boolValue = prefs.getBool('boolValue');
  return boolValue;
}
