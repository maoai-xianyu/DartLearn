import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
