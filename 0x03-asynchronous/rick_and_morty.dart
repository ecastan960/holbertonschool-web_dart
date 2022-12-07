import "package:http/http.dart" as http;
import 'dart:convert';

printRmCharacters() async {
  try {
    var res = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );
    var body = json.decode(res.body);

    for (var i = 0; i < body.length; i++) {
      print("${body['results'][i]['name']}");
    }
  } catch (err) {
    print('error caught: $err');
  }
}
