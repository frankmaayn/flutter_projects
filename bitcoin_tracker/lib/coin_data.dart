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
const apiKey = 'F1F383AF-26E6-42B6-A716-0867405DDF51';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    var mapResult = [];
    //TODO 4: Use a for loop here to loop through the cryptoList and request the data for each of them in turn.
    //TODO 5: Return a Map of the results instead of a single value.
    for (int i = 0; i < cryptoList.length; i++) {
      String crypto = cryptoList[i];
      String requestURL = '$coinAPIURL/$crypto/$selectedCurrency';
      http.Response response = await http.get(requestURL);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        var lastPrice = decodedData['rate'];
        mapResult.add(lastPrice);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return mapResult;
  }
}
