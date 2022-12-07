import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    var res = await fetchUserData();
    Map value = json.decode(res);
    var name = value['username'];
    return ('Hello $name');
  } catch (err) {
    return ('error caught: $err');
  }
}

Future<String> loginUser() async {
  try {
    bool user = await checkCredentials();
    if (user) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    return ('error caught: $err');
  }
}
