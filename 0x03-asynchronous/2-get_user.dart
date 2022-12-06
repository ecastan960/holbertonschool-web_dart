import '2-util.dart';

Future<void> getUser() async {
  try {
    var res = await fetchUser();
    print(res);
  } catch (err) {
    print('Caught error: $err');
  }
}
