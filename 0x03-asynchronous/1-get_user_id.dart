import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  var res = await fetchUserData();
  Map value = json.decode(res);
  return value['id'];
}
