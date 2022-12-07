import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    var res = await fetchUserData();
    Map user = json.decode(res);
    var id = user['id'];
    var product = await fetchUserOrders(id);
    double sum = 0;
    var products = json.decode(product);
    for (var i = 0; i < products.length; i++) {
      sum += json.decode(await fetchProductPrice(products[i]));
    }
    return sum;
  } catch (err) {
    print('error caught: $err');
    return -1;
  }
}
