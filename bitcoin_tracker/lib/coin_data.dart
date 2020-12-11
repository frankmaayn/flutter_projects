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
  // /v1/exchangerate/BTC?apikey=73034021-THIS-IS-SAMPLE-KEY
  Future getCoinData() async {
    http.Response response =
        await http.get('$coinAPIURL/BTC/USD?apikey=$apiKey');

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print('somethings wrong');
    }
  }
}
