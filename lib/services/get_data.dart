import 'package:bitcoin_ticker/services/networking.dart';

const apiKey = '7C76F6F5-50C9-4D9D-82E4-85A278C0B3AB';
const coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {

  Future<dynamic> getCoinData({String crypto, String currency}) async {

    var url = '$coinApiURL/BTC/USD/?apikey=$apiKey';
    NetworkHelper networkHelper = NetworkHelper(url);
    var coinData = await networkHelper.getData();
    print(url);
    print(coinData);
    return coinData;
  }

}