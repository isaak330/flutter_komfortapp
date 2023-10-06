import 'package:shared_preferences/shared_preferences.dart';

addStringID(String id) async {
  SharedPreferences userID = await SharedPreferences.getInstance();
  await userID.setString('stringValue', id);
}

Future<String> getStringID() async {
  SharedPreferences userID = await SharedPreferences.getInstance();
  String? stringValue = userID.getString('stringValue');
  return stringValue!;
}
