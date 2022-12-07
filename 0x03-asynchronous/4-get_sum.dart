import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    var res = await fetchUserData();
    Map user = json.decode(res);
    var id = user['id'];
    var product = await fetchUserOrders(id);
    double sum = 0;
    var value = '';
    var products = json.decode(product);
    for (var i = 0; i < products.length; i++) {
      value = await fetchProductPrice(products[i]);
      sum += double.parse(value);
    }
    return sum;
  } catch (err) {
    print('error caught: $err');
    return -1;
  }
}
