import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '[INSERT API KEY HERE]]';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map mapResult = new Map();

    for (int i = 0; i < cryptoList.length; i++) {
      String crypto = cryptoList[i];
      String requestURL =
          '$coinAPIURL/$crypto/$selectedCurrency?apikey=$apiKey';
      http.Response response = await http.get(requestURL);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['rate'];
        mapResult[crypto] = lastPrice.toStringAsFixed(2);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    print(mapResult);
    return mapResult;
  }
}
