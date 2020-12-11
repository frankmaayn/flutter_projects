import 'dart:convert';

import 'package:http/http.dart' as http;

const apiKey = '[INSERT YOUR API KEY HERE]';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
