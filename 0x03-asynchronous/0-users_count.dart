import '0-util.dart';

Future<void> usersCount() async {
  var users = await fetchUsersCount();
  print(users);
}
