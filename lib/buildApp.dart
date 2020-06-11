import 'package:flutter/material.dart';
import 'price_screen.dart';
import 'package:bitcoin_ticker/services/get_data.dart';

class BuildApp extends StatefulWidget {
  @override
  _BuildAppState createState() => _BuildAppState();
}

class _BuildAppState extends State<BuildApp> {

  @override
  void initState() {
    super.initState();
    getCoinData();
  }

  void getCoinData() async {
    var data = await CoinData().getCoinData();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return PriceScreen(coinData: 'data',);
  }
}
