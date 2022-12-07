import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var res = await fetchUserData();
    Map user = json.decode(res);
    var id = user['id'];
    var product = await fetchUserOrders(id);
    num sum = 0;
    var value = '';
    var products = json.decode(product);
    for (var i = 0; i < products.length; i++) {
      value = await fetchProductPrice(products[i]);
      sum += num.parse(value);
    }
    return sum;
  } catch (err) {
    return -1;
  }
}
