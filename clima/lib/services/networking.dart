import 'dart:convert';

import 'package:http/http.dart' as http;

const apiKey = 'ea340f3514b60cdf47d4c7d5a28d298f';

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
